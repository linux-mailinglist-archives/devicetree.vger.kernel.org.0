Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 102A9466792
	for <lists+devicetree@lfdr.de>; Thu,  2 Dec 2021 17:06:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242221AbhLBQJb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Dec 2021 11:09:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347259AbhLBQJ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Dec 2021 11:09:28 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEC2DC06174A
        for <devicetree@vger.kernel.org>; Thu,  2 Dec 2021 08:06:05 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id w1so23570edc.6
        for <devicetree@vger.kernel.org>; Thu, 02 Dec 2021 08:06:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=r9BCMwjO86HB40ONAVYZeL2fOZeLbMIo8AUDn8JOWzI=;
        b=e1cUMy8vAbZrdKne+2GrsU3cb/Lhk4FddaqkgJmQcjeq1h7dNMxWzgD2J0iBlBIIEi
         ZjQTJfazkFxXnK/nMWxjbjUv/Mo1x51OvkZUj6KkmWG3oGTIY//HrWwAemZU+IWlqZlZ
         OhvF4UEc/S05ZM+jcfeJnwRo9QNIZW70BjNzckmLlft8X/MHtMWyQmm1a1AuySNAOmrl
         ATBiLnsbWVvjWW+yU7hn8cgHz8XmfJceh9+xIY7FkqvgW2tEw3/XdnBfhyWYzk49q1cc
         9JMRp7MM80C3zzlIJocwUO9HYgGbBpfjpnx+J5q/IGq/sqv/UEFiRUfSGBa1k2+ncxR7
         mmTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=r9BCMwjO86HB40ONAVYZeL2fOZeLbMIo8AUDn8JOWzI=;
        b=aEUWjDdAxaNF79tUvA2udzlUou8mcAg/dNcf1EiyePRRiitXtysMRIVMLoTF7Z2TwE
         65Okj3rzw2VepZp2Dx/ElUldfcJ7lFzNxrZ3SlWVW8uBXojh+7TQMgGAKtR8TZfw7Yhd
         6GqXk/lludA7j8grv2Tqz7ERR76TiHZYqkPTspNjAFNmxCDvJhWJqDi/MgnzeDscQAJf
         cbi7mGF0/tkPZJ3ocT2IWpUpBq46xQovq1Ma7VZJAAjfcXAMnkgB1dbu5qNFv9s6rky+
         vxb68fG5d7szDOJnQfyHoNu0pAFHMDzrtnwL3ZCJuAvxhK6KOOl24DbGkM+9uI2eAj0e
         ZFbA==
X-Gm-Message-State: AOAM532r1iRV1ysH46rHPt34Q3VpyxxSbeNdMUMTdtEtlXWi2GZq4/kj
        ApUp9P1V/d9TdMBE1qKkSe++g+zH3Id/xAzB4Vw=
X-Google-Smtp-Source: ABdhPJzJNLpIISDe3gfq8ZkWlgO9SsS4MM0CC90VIbNVH7hZfrmrH10Q3pfhuaGtWO/3st19brlvARlFwNt9Za0ciNk=
X-Received: by 2002:a50:9ea6:: with SMTP id a35mr18509977edf.400.1638461163247;
 Thu, 02 Dec 2021 08:06:03 -0800 (PST)
MIME-Version: 1.0
From:   Dweb Fan <dwebfan@gmail.com>
Date:   Thu, 2 Dec 2021 08:05:52 -0800
Message-ID: <CA+HNRgDCfto-Y=NdchLZ=GK_xFru1ZNYJEp9g5jO_rdNLGvV0g@mail.gmail.com>
Subject: help on patch Netgear R6300v2 router to enable USB disk mount
To:     f.fainelli@gmail.com
Cc:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear Florian Fainelli,

I'm trying to enable USB drive on my Netgear R6300v2 router, and got
one issue I described in
https://forum.openwrt.org/t/usb2-usb3-on-netgear-r6300v2-doesn-t-detect-any-devices/108385/15.
Rafal Milecki, who is from openwrt community and also CC in the email,
suggests that I consult you and see if you or someone can provide one
kernel patch modifying bcm4708-netgear-r6300-v2.dts, then he can
backport to OpenWrt. Sorry if the request is too much, please let me
know if you need any more information, or I need to consult other
people for help!

Thanks for your attention!

Best regards
Dweb
