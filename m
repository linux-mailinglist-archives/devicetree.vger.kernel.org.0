Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD26933F0E3
	for <lists+devicetree@lfdr.de>; Wed, 17 Mar 2021 14:10:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230391AbhCQNJi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Mar 2021 09:09:38 -0400
Received: from aserp2130.oracle.com ([141.146.126.79]:40518 "EHLO
        aserp2130.oracle.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230331AbhCQNJL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Mar 2021 09:09:11 -0400
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
        by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12HD5D7A081962;
        Wed, 17 Mar 2021 13:09:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=ekkLyr+qO4g3X6qwNCmwaxn3aHmZPF5LU3lLwDE3t48=;
 b=VlYcBQD5ybK1yxgyrtRcRebE6eTHcM1RausTJXaBVx0ETuib1om0jkNrKJC9QQtMb3Hd
 5/LCHDoIcDPxKQkK4QdfJodpu8mz1mSwskGxb15eIwhNQ747FV24CEYDFuzdtFxdFbaD
 3evO5j8IeIQ6bxi+4kVM9M0wSSfGL1n0G/cprFNudDtx7yk9UKKNyxRpUU9S+JBfjQgl
 aOyego/3/Ua8wWs5aePH8i6S01ce3QG6fEPmUJpP7U3UFUUFmc4GgLNyTE3ZswOFBipF
 Z7SmDozxgRrqb87talQpBtTeNejPHt3iFHWufwwE79ZH+GYvHY2W6Vx8eWWu9UBIdjTm 7Q== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
        by aserp2130.oracle.com with ESMTP id 378jwbm2eq-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 17 Mar 2021 13:09:10 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
        by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12HD6ikZ181711;
        Wed, 17 Mar 2021 13:09:08 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
        by aserp3030.oracle.com with ESMTP id 3796yutca7-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 17 Mar 2021 13:09:08 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
        by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 12HD97XB019409;
        Wed, 17 Mar 2021 13:09:07 GMT
Received: from mwanda (/102.36.221.92)
        by default (Oracle Beehive Gateway v4.0)
        with ESMTP ; Wed, 17 Mar 2021 06:09:06 -0700
Date:   Wed, 17 Mar 2021 16:09:00 +0300
From:   Dan Carpenter <dan.carpenter@oracle.com>
To:     stephen.boyd@linaro.org
Cc:     devicetree@vger.kernel.org
Subject: [bug report] of: Support parsing phandle argument lists through a
 nexus node
Message-ID: <YFH/bLGZo43quuc9@mwanda>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9925 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 malwarescore=0 spamscore=0
 bulkscore=0 mlxlogscore=999 mlxscore=0 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103170097
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9925 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxlogscore=999
 spamscore=0 mlxscore=0 bulkscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1011 adultscore=0 phishscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103170097
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Stephen Boyd,

The patch bd6f2fd5a1d5: "of: Support parsing phandle argument lists
through a nexus node" from Jan 30, 2018, leads to the following
static checker warning:

	drivers/of/base.c:1592 of_parse_phandle_with_args_map()
	warn: loop overwrites return value 'ret'

drivers/of/base.c
  1590  
  1591          ret = -EINVAL;
                ^^^^^^^^^^^^^
This return is only used until part way through the first iteration.
For subsequent iterations, the code will return success in the case of
an error.

  1592          while (cur) {
  1593                  /* Get the <list>-map property */
  1594                  map = of_get_property(cur, map_name, &map_len);
  1595                  if (!map) {
  1596                          ret = 0;
  1597                          goto free;
  1598                  }
  1599                  map_len /= sizeof(u32);
  1600  
  1601                  /* Get the <list>-map-mask property (optional) */
  1602                  mask = of_get_property(cur, mask_name, NULL);
  1603                  if (!mask)
  1604                          mask = dummy_mask;
  1605                  /* Iterate through <list>-map property */
  1606                  match = 0;
  1607                  while (map_len > (list_size + 1) && !match) {
  1608                          /* Compare specifiers */
  1609                          match = 1;
  1610                          for (i = 0; i < list_size; i++, map_len--)
  1611                                  match &= !((match_array[i] ^ *map++) & mask[i]);
  1612  
  1613                          of_node_put(new);
  1614                          new = of_find_node_by_phandle(be32_to_cpup(map));
  1615                          map++;
  1616                          map_len--;
  1617  
  1618                          /* Check if not found */
  1619                          if (!new)
  1620                                  goto put;
  1621  
  1622                          if (!of_device_is_available(new))
  1623                                  match = 0;
  1624  
  1625                          ret = of_property_read_u32(new, cells_name, &new_size);
                                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
"ret" set to zero here.

  1626                          if (ret)
  1627                                  goto put;
  1628  
  1629                          /* Check for malformed properties */
  1630                          if (WARN_ON(new_size > MAX_PHANDLE_ARGS))
  1631                                  goto put;
                                        ^^^^^^^^
Probably -EINVAL was intended here.

  1632                          if (map_len < new_size)
  1633                                  goto put;
  1634  
  1635                          /* Move forward by new node's #<list>-cells amount */
  1636                          map += new_size;
  1637                          map_len -= new_size;
  1638                  }
  1639                  if (!match)
  1640                          goto put;
  1641  
  1642                  /* Get the <list>-map-pass-thru property (optional) */
  1643                  pass = of_get_property(cur, pass_name, NULL);
  1644                  if (!pass)
  1645                          pass = dummy_pass;
  1646  
  1647                  /*
  1648                   * Successfully parsed a <list>-map translation; copy new
  1649                   * specifier into the out_args structure, keeping the
  1650                   * bits specified in <list>-map-pass-thru.
  1651                   */
  1652                  match_array = map - new_size;
  1653                  for (i = 0; i < new_size; i++) {
  1654                          __be32 val = *(map - new_size + i);
  1655  
  1656                          if (i < list_size) {
  1657                                  val &= ~pass[i];
  1658                                  val |= cpu_to_be32(out_args->args[i]) & pass[i];
  1659                          }
  1660  
  1661                          out_args->args[i] = be32_to_cpu(val);
  1662                  }
  1663                  out_args->args_count = list_size = new_size;
  1664                  /* Iterate again with new provider */
  1665                  out_args->np = new;
  1666                  of_node_put(cur);
  1667                  cur = new;
  1668          }
  1669  put:
  1670          of_node_put(cur);
  1671          of_node_put(new);
  1672  free:
  1673          kfree(mask_name);
  1674          kfree(map_name);
  1675          kfree(cells_name);
  1676          kfree(pass_name);
  1677  
  1678          return ret;
  1679  }

regards,
dan carpenter
