Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 534431ABD13
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2020 11:42:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2503980AbgDPJli (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Apr 2020 05:41:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S2503936AbgDPJlc (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 Apr 2020 05:41:32 -0400
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com [IPv6:2a00:1450:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 021A2C061A41
        for <devicetree@vger.kernel.org>; Thu, 16 Apr 2020 02:41:32 -0700 (PDT)
Received: by mail-lj1-x242.google.com with SMTP id u6so5480564ljl.6
        for <devicetree@vger.kernel.org>; Thu, 16 Apr 2020 02:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5cXqd/FYXB0lbGufBrqDJUqh9/OZeedfUjtBKEKKPBY=;
        b=QREs/SmDJvEf1zq17GMjwgTqEIyMlkJEjg5f3v/HeaLYKjVC8QYC1tgHS9NiE8NKcc
         TGpmQwdmfUl79CLFpobpVIg7Y71DLmUEMoO4SybCkM0m/qJTWd8TH7fD8AW6GTjZh5E2
         3xB3Gmop1M/FTGW91HEFmJs0231flS44BMs2mjhSI3HDKbtBPY4kMr+le/vVy6MecdtM
         36GNDW5Lz27hb9BKmDCXci7WaRgb054h8OPccGeiMoEExPEgMfHxCK1ZBv+Rux+HEuDy
         gMC87Sq8XSDg34xBrMmEcMt62x/S+my0Xke4M9RSm63NB88ahjLVCRWh9rFJMdVUhp5/
         d7RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5cXqd/FYXB0lbGufBrqDJUqh9/OZeedfUjtBKEKKPBY=;
        b=M4EktwHdmOFBbh/J901BgODyzGYzM7iBlUkmxN7XVBuqgxn72C0kvY/D/3p/2GnRcS
         ITja/IsVHz5aJ9ey+w5P3S90gG0lLFXwcnToeuUAeTIRD/VgxGxQnE4jA8agZZ9CjS+I
         jGW4Ipjo7jfyNGRl99pQyBy6w5X7DkMtJGY9HmrS+yKo1QW2myW0NgMtDiRiYw5HHRVF
         3sS5tJC1YQi7luiIlBxuA1ZP0i2RbOFAgXKkN5Un3/0bpO/zfpV38g/JQEsp53UliyPO
         QGlEZyeTXpKToDWbt+zeEoIr14T5Db1t7SZr3844lJlJGCA2tVZ7ss7QU2pfjs4hCJsI
         5bLw==
X-Gm-Message-State: AGi0PuasbQePow11ba5xgp2Wg31XJIFrGhwJWmwVraHbcL1vkY2J3tr4
        ofoPuQK8ilNjoYU+wUjfuAjwEC936N1X3Drt+x6ZUg==
X-Google-Smtp-Source: APiQypJnieW207MTrrcDCpD/6xCHVrwXn13tNVmDwtrOVmdK3UPhTDARFtiYg95ApfvlUAdHmjKJ2IVQP/pmqh19PEI=
X-Received: by 2002:a2e:5048:: with SMTP id v8mr5437034ljd.99.1587030090524;
 Thu, 16 Apr 2020 02:41:30 -0700 (PDT)
MIME-Version: 1.0
References: <1585306559-13973-1-git-send-email-Anson.Huang@nxp.com> <1585306559-13973-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1585306559-13973-2-git-send-email-Anson.Huang@nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 16 Apr 2020 11:41:19 +0200
Message-ID: <CACRpkdajgsshQ25eCsx8FS5qZ10AMcG9_PC5bwQfqGTXSprSvg@mail.gmail.com>
Subject: Re: [PATCH 2/3] pinctrl: imx: Add imx8dxl driver
To:     Anson Huang <Anson.Huang@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Stefan Agner <stefan@agner.ch>,
        Sascha Hauer <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Guenter Roeck <linux@roeck-us.net>,
        Greg KH <gregkh@linuxfoundation.org>,
        Peng Fan <peng.fan@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Leo Li <leoyang.li@nxp.com>, Olof Johansson <olof@lixom.net>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        NXP Linux Team <Linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 27, 2020 at 12:03 PM Anson Huang <Anson.Huang@nxp.com> wrote:

> i.MX8DXL contains a system controller that is responsible for controlling
> the pad setting of the IPs that are present. Communication between the
> host processor running an OS and the system controller happens through
> a SCU protocol, add support for the SCU based i.MX8DXL pinctrl driver.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Patch applied.

Yours,
Linus Walleij
