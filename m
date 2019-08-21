Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A802F97E3A
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 17:12:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727484AbfHUPJt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 11:09:49 -0400
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]:46076 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726885AbfHUPJt (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Aug 2019 11:09:49 -0400
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
        by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x7LF1CJE089643
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 11:09:48 -0400
Received: from e31.co.us.ibm.com (e31.co.us.ibm.com [32.97.110.149])
        by mx0b-001b2d01.pphosted.com with ESMTP id 2uh85fgr99-1
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 11:09:48 -0400
Received: from localhost
        by e31.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
        for <devicetree@vger.kernel.org> from <anoo@linux.ibm.com>;
        Wed, 21 Aug 2019 16:09:47 +0100
Received: from b03cxnp08026.gho.boulder.ibm.com (9.17.130.18)
        by e31.co.us.ibm.com (192.168.1.131) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
        (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
        Wed, 21 Aug 2019 16:09:43 +0100
Received: from b03ledav002.gho.boulder.ibm.com (b03ledav002.gho.boulder.ibm.com [9.17.130.233])
        by b03cxnp08026.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id x7LF9gOY61014402
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 21 Aug 2019 15:09:42 GMT
Received: from b03ledav002.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 10780136053;
        Wed, 21 Aug 2019 15:09:42 +0000 (GMT)
Received: from b03ledav002.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id C743513604F;
        Wed, 21 Aug 2019 15:09:41 +0000 (GMT)
Received: from ltc.linux.ibm.com (unknown [9.16.170.189])
        by b03ledav002.gho.boulder.ibm.com (Postfix) with ESMTP;
        Wed, 21 Aug 2019 15:09:41 +0000 (GMT)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Wed, 21 Aug 2019 10:10:06 -0500
From:   Adriana Kobylak <anoo@linux.ibm.com>
To:     Joel Stanley <joel@jms.id.au>
Cc:     Andrew Jeffery <andrew@aj.id.au>,
        Adriana Kobylak <anoo@us.ibm.com>, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org,
        linux-arm-kernel@lists.infradead.org,
        Linux-aspeed 
        <linux-aspeed-bounces+anoo=linux.ibm.com@lists.ozlabs.org>
Subject: Re: [PATCH] ARM: dts: aspeed: swift: Add eMMC device
In-Reply-To: <20190821045655.21752-1-joel@jms.id.au>
References: <20190821045655.21752-1-joel@jms.id.au>
X-Sender: anoo@linux.ibm.com
User-Agent: Roundcube Webmail/1.0.1
X-TM-AS-GCONF: 00
x-cbid: 19082115-8235-0000-0000-00000EC8D701
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011629; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000287; SDB=6.01250037; UDB=6.00659943; IPR=6.01031592;
 MB=3.00028261; MTD=3.00000008; XFM=3.00000015; UTC=2019-08-21 15:09:45
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19082115-8236-0000-0000-000046E6A6BD
Message-Id: <202dcd112f41044162465d8a724b66d0@linux.vnet.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-08-21_05:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908210160
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2019-08-20 23:56, Joel Stanley wrote:
> Swift contains an eMMC device attached to the second SDHCI controller.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Reviewed-by: Adriana Kobylak <anoo@us.ibm.com>

> ---
>  arch/arm/boot/dts/aspeed-bmc-opp-swift.dts | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
> b/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
> index f14f745b34ca..25bc0e1bbced 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
> @@ -963,4 +963,15 @@
>  	status = "okay";
>  };
> 
> +&sdmmc {
> +       status = "okay";
> +};
> +
> +&sdhci1 {
> +       status = "okay";
> +
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_sd2_default>;
> +};
> +
>  #include "ibm-power9-dual.dtsi"

