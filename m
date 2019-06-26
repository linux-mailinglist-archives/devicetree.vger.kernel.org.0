Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 14B4F5663E
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2019 12:07:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726329AbfFZKHs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jun 2019 06:07:48 -0400
Received: from aserp2120.oracle.com ([141.146.126.78]:40088 "EHLO
        aserp2120.oracle.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725379AbfFZKHs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jun 2019 06:07:48 -0400
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
        by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5QA46G6175214;
        Wed, 26 Jun 2019 10:07:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2018-07-02;
 bh=sZHNwp+ow4eTnQBS2L7JrzKbWMnpcS05kMGZkUoPxQM=;
 b=oyR15kS+fVCpC9vPc9oG2JMUeFWLoLx8ZLKESHYF+DYnaL/XDVbXMUJ+nOnSSX74HwzC
 wmgGnJQZmlfXripSQyZOqmJuWh9WcPAtGUm9kFRub7pEHa48sp4fdB/CQhMf0hnrvbaP
 f0djsyhP8+qv86FIwzWe3PBZS5DfmSKLNKWyP3sX0Dzs51omxX5M8TF/gdNhec671343
 ToHWtELuxCPnS71bzk67QXkzrHNHxxUUkwi7oUaFIUchH5o51yh0nYT7r1ohylNGfI5J
 n2fnrTZzWmkhIioqYlZhSr+sYIlJ4nvjtUbBZ3AKCGrgT7uE+bcQlh77nFb+Is/auuev sw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
        by aserp2120.oracle.com with ESMTP id 2t9c9psccn-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 26 Jun 2019 10:07:44 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
        by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5QA7hIs167703;
        Wed, 26 Jun 2019 10:07:43 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
        by aserp3030.oracle.com with ESMTP id 2t9accm73j-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 26 Jun 2019 10:07:43 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
        by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5QA7XB8003609;
        Wed, 26 Jun 2019 10:07:33 GMT
Received: from mwanda (/41.57.98.10)
        by default (Oracle Beehive Gateway v4.0)
        with ESMTP ; Wed, 26 Jun 2019 03:07:32 -0700
Date:   Wed, 26 Jun 2019 13:07:27 +0300
From:   Dan Carpenter <dan.carpenter@oracle.com>
To:     robh@kernel.org
Cc:     devicetree@vger.kernel.org
Subject: [bug report] scripts/dtc: Update to upstream version
 v1.5.0-23-g87963ee20693
Message-ID: <20190626100727.GC3242@mwanda>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9299 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=959
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906260121
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9299 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906260121
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Rob Herring,

The patch 9bb9c6a110ea: "scripts/dtc: Update to upstream version
v1.5.0-23-g87963ee20693" from Jun 12, 2019, leads to the following
static checker warning:

	./scripts/dtc/libfdt/fdt_addresses.c:74 fdt_appendprop_addrrange()
	warn: integer overflow (literal): u32max + 1

./scripts/dtc/libfdt/fdt_addresses.c
    54  /* This function assumes that [address|size]_cells is 1 or 2 */
    55  int fdt_appendprop_addrrange(void *fdt, int parent, int nodeoffset,
    56                               const char *name, uint64_t addr, uint64_t size)
    57  {
    58          int addr_cells, size_cells, ret;
    59          uint8_t data[sizeof(fdt64_t) * 2], *prop;
    60  
    61          ret = fdt_address_cells(fdt, parent);
    62          if (ret < 0)
    63                  return ret;
    64          addr_cells = ret;
    65  
    66          ret = fdt_size_cells(fdt, parent);
    67          if (ret < 0)
    68                  return ret;
    69          size_cells = ret;
    70  
    71          /* check validity of address */
    72          prop = data;
    73          if (addr_cells == 1) {
    74                  if ((addr > UINT32_MAX) || ((UINT32_MAX + 1 - addr) < size))
                                                     ^^^^^^^^^^^^^^
UINT32_MAX + 1 is just zero.

    75                          return -FDT_ERR_BADVALUE;
    76  
    77                  fdt32_st(prop, (uint32_t)addr);
    78          } else if (addr_cells == 2) {
    79                  fdt64_st(prop, addr);
    80          } else {
    81                  return -FDT_ERR_BADNCELLS;
    82          }
    83  
    84          /* check validity of size */
    85          prop += addr_cells * sizeof(fdt32_t);
    86          if (size_cells == 1) {
    87                  if (size > UINT32_MAX)
    88                          return -FDT_ERR_BADVALUE;
    89  
    90                  fdt32_st(prop, (uint32_t)size);
    91          } else if (size_cells == 2) {
    92                  fdt64_st(prop, size);
    93          } else {
    94                  return -FDT_ERR_BADNCELLS;
    95          }

regards,
dan carpenter
