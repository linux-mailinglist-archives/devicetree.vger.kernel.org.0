Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2253A2C83F9
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 13:16:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726385AbgK3MQN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 07:16:13 -0500
Received: from userp2130.oracle.com ([156.151.31.86]:54190 "EHLO
        userp2130.oracle.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726197AbgK3MQN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 07:16:13 -0500
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
        by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AUCFAZA134302;
        Mon, 30 Nov 2020 12:15:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=Welqfb51u2AFKJ0r8dnMRt+sOVkpF+0KUkstdgNij/Y=;
 b=vLHoq1OlD8yV0Z3n87/HTCdmkpYfJscayQaXNDhpJSa5dxzdo6rZB4B/yFE6JKfqOIGB
 l69y1iE71DMlP1TZWkPF9ElWlrbFdqZR8dCEQlCcacUMPRe5OSOV/HsVIOm8jUQXwR8W
 ULbnrKA5COBsG+FJDjMOM4tb351Ork8PwzRq79r3oaOqPVz7Q3uXP9HxZXrNVkGDerO+
 MrodHCxlkHQUnQp+dNJaES/PBx63HXwqKoSdhrfc5w/zpiAjfjO0XHTl+v4BbGs6vwtE
 Gm4g7b638RuYcGGpQhqef7l6F3zDIzZi3twbE9caCs4rvOhEwQKVmx283RKkwRmogR/j SQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
        by userp2130.oracle.com with ESMTP id 353dyqcqsy-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 30 Nov 2020 12:15:25 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
        by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AUCBF4K014080;
        Mon, 30 Nov 2020 12:15:25 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
        by userp3030.oracle.com with ESMTP id 3540fv0k6h-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Mon, 30 Nov 2020 12:15:24 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
        by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0AUCFMwv030718;
        Mon, 30 Nov 2020 12:15:23 GMT
Received: from kadam (/102.36.221.92)
        by default (Oracle Beehive Gateway v4.0)
        with ESMTP ; Mon, 30 Nov 2020 04:15:16 -0800
Date:   Mon, 30 Nov 2020 15:15:07 +0300
From:   Dan Carpenter <dan.carpenter@oracle.com>
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc:     Vinod Koul <vkoul@kernel.org>,
        "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>, NeilBrown <neil@brown.name>
Subject: Re: [PATCH v4 2/4] phy: ralink: Add PHY driver for MT7621 PCIe PHY
Message-ID: <20201130121506.GB2767@kadam>
References: <20201031122246.16497-1-sergio.paracuellos@gmail.com>
 <20201031122246.16497-3-sergio.paracuellos@gmail.com>
 <20201119053059.GY50232@vkoul-mobl>
 <CAMhs-H8uyoVGUjrG_V2ueZN1UC7jSMZ-6E4YCDw1xqGKNFPv5w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMhs-H8uyoVGUjrG_V2ueZN1UC7jSMZ-6E4YCDw1xqGKNFPv5w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9820 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 suspectscore=0
 phishscore=0 mlxlogscore=999 adultscore=0 mlxscore=0 bulkscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011300080
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9820 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 bulkscore=0
 clxscore=1011 mlxscore=0 spamscore=0 priorityscore=1501 mlxlogscore=999
 suspectscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011300080
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 19, 2020 at 07:05:22AM +0100, Sergio Paracuellos wrote:
> > > +static inline void phy_write(struct mt7621_pci_phy *phy, u32 val, u32 reg)
> > > +{
> > > +     regmap_write(phy->regmap, reg, val);
> >
> > Why not use regmap_ calls directly and avoid the dummy wrappers..?
> 
> This is because name was the dummy names are a bit shorter :) but if
> it is also necessary I will use directly regmap_ functions.

At least don't swap the last two arguments around.

regards,
dan carpenter

