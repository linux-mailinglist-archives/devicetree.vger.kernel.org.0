Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 20572282B0F
	for <lists+devicetree@lfdr.de>; Sun,  4 Oct 2020 15:44:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726073AbgJDNon (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Oct 2020 09:44:43 -0400
Received: from mail-ed1-f67.google.com ([209.85.208.67]:33403 "EHLO
        mail-ed1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725927AbgJDNon (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Oct 2020 09:44:43 -0400
Received: by mail-ed1-f67.google.com with SMTP id g4so6631242edk.0
        for <devicetree@vger.kernel.org>; Sun, 04 Oct 2020 06:44:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CRTYvxw2J9QY5WVSxmAMhb38KlqYhLp/2cLaz23oRrk=;
        b=iVXLLfB4gbn1EmcEujnW1Ft6Sg5fihbP3k5JvKmTINgwlnYJnIA8z/H81oUBpEcRr4
         zaEUmWRwrVDpcjdAqejlr/ion/7y6aiCjr1PC99w3UjNdj5qI9WzJ4425gbzxo7ESodN
         qzTO5T0KYPRBzYkBlQdE9om3EC/CmYgENJhtcAfn4HLx7rpSAagGHqjQRQ0rnoJu/bqb
         xzpMVX2p+5pufVIns3V34WkRTqpU+upbqS4DdNZ7i+K7iq+xg6vs08FORmT3QWgypAV+
         UQHZPCti2X1q80muYfbJ9DgKKK/F2OxVL8yv16kcB2TB86AIQxNwm0XLpigrXRSdSM15
         +bfw==
X-Gm-Message-State: AOAM532hr5lDYPkXCoedPbiZYquQ+MmNXmFsHNCYE4+hCjHGNl8Btfdd
        vzav2FpaQ9ORE+ICxPEQXTYAeIdxS+4=
X-Google-Smtp-Source: ABdhPJxj0IuU15am6WC5SeZDJhy0o33yarzYbo4O7cAbjXdoX4dGgZ+l+AtriCPHghMYu1V5JfiVew==
X-Received: by 2002:aa7:dada:: with SMTP id x26mr9215202eds.167.1601819079876;
        Sun, 04 Oct 2020 06:44:39 -0700 (PDT)
Received: from kozik-lap ([194.230.155.194])
        by smtp.googlemail.com with ESMTPSA id a5sm6552368edl.6.2020.10.04.06.44.38
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 04 Oct 2020 06:44:38 -0700 (PDT)
Date:   Sun, 4 Oct 2020 15:44:36 +0200
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Li Jun <jun.li@nxp.com>
Cc:     robh+dt@kernel.org, shawnguo@kernel.org, balbi@kernel.org,
        gregkh@linuxfoundation.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        Anson.Huang@nxp.com, aisheng.dong@nxp.com, peng.fan@nxp.com,
        fugang.duan@nxp.com, horia.geanta@nxp.com, qiangqing.zhang@nxp.com,
        peter.chen@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 1/4] dt-bindings: usb: dwc3-imx8mp: add imx8mp dwc3
 glue bindings
Message-ID: <20201004134436.GA3158@kozik-lap>
References: <1601726527-23326-1-git-send-email-jun.li@nxp.com>
 <1601726527-23326-2-git-send-email-jun.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1601726527-23326-2-git-send-email-jun.li@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Oct 03, 2020 at 08:02:04PM +0800, Li Jun wrote:
> NXP imx8mp integrates 2 dwc3 3.30b IP and add some wakeup logic
> to support low power mode, the glue layer is for this wakeup
> functionality, which has a separated interrupt, can support
> wakeup from U3 and connect events for host, and vbus wakeup for
> device.
> 
> Signed-off-by: Li Jun <jun.li@nxp.com>
> ---
>  .../devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml   | 105 +++++++++++++++++++++
>  1 file changed, 105 insertions(+)
> 

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof
