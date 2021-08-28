Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56B083FA7F9
	for <lists+devicetree@lfdr.de>; Sun, 29 Aug 2021 01:12:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230173AbhH1XNZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Aug 2021 19:13:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230074AbhH1XNZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Aug 2021 19:13:25 -0400
Received: from ssl.serverraum.org (ssl.serverraum.org [IPv6:2a01:4f8:151:8464::1:2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEAC3C061756
        for <devicetree@vger.kernel.org>; Sat, 28 Aug 2021 16:12:33 -0700 (PDT)
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ssl.serverraum.org (Postfix) with ESMTPSA id 3E27E22239;
        Sun, 29 Aug 2021 01:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc; s=mail2016061301;
        t=1630192350;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Nxt0IHOPTmluzbBnbp6qOxrYL8Wy6ood4Z/AwHlv4Vs=;
        b=Zt6IwU/qzYtcK2pa7FQQpjhNs9ym8tc5c9JYBp2ZvLTJyf0wluz7xz5evlKmdOWyIfHdw6
        e3jv9x3+NlooKAJ0sUShlZRUL5vRNAeou8TLqRgFf1/X17EqfwlS2hNyaE0YEMdw2KVWq1
        xaNegjnk8n7TWpRhts0hmBwclTNo+PM=
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Sun, 29 Aug 2021 01:12:30 +0200
From:   Michael Walle <michael@walle.cc>
To:     Vladimir Oltean <olteanv@gmail.com>
Cc:     Tom Rini <trini@konsulko.com>, Rob Herring <robh@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Priyanka Jain <priyanka.jain@nxp.com>,
        u-boot@lists.denx.de, heiko.thiery@gmail.com
Subject: Re: incompatible device trees between u-boot and linux
In-Reply-To: <20210826163233.edfj6q7xeptwevkm@skbuf>
References: <51c2a92f6bf771769f1e2da5157727e8@walle.cc>
 <20210825140045.GR858@bill-the-cat> <20210825141816.qfn25xlech55rwsg@skbuf>
 <20210825142610.GU858@bill-the-cat> <20210825151220.xkpxxucce2oicfvy@skbuf>
 <20210825152408.GW858@bill-the-cat> <20210825154323.reksf2nyncech6so@skbuf>
 <20210825200950.GY858@bill-the-cat> <20210825230305.hbxhshhbdhe56iod@skbuf>
 <5798d183839b78ed5e6f2cd880934759@walle.cc>
 <20210826163233.edfj6q7xeptwevkm@skbuf>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <0e2f6513b6fb7162faa7afd1f6f21348@walle.cc>
X-Sender: michael@walle.cc
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am 2021-08-26 18:32, schrieb Vladimir Oltean:
> On Thu, Aug 26, 2021 at 09:35:12AM +0200, Michael Walle wrote:
>> Theres still one catch at the moment, AFAIK in linux you can put the
>> PHYs either in the mdio controller node or in a "mdio" subnode within
>> the ethernet controller node. I'm not sure wether the latter works in
>> u-boot, but [1] looks promising. At least, linux dtbs are using the
>> mdio subnodes and u-boot put the phys into the mdio controller node.
> 
> Please change Linux for that, move the PHYs from the per-port MDIO node
> to the PF 3 central MDIO controller node. Due to hardware reasons, the
> per-port MDIO controller registers are in fact de-featured and should 
> be
> hidden from new LS1028A reference manuals.

Care to share some more details? There should be some more information
besides "for hardware reasons" which should go into the commit message.
Is there an erratum?

In fact, I guess in Rev0 of the RM it has already been removed, at least
from the port memory map (in the RevB RM it was still present).

-michael
