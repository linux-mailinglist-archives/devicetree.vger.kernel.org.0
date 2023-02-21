Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E56E369E8FC
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 21:24:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230093AbjBUUYO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 15:24:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230063AbjBUUYN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 15:24:13 -0500
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9148EEFA2
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 12:24:12 -0800 (PST)
Received: by mail-yb1-xb2c.google.com with SMTP id g8so5823613ybu.13
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 12:24:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wg6wUsUBv3ps1Ea2+HUNQuXrVhFNTJMl9lhHXw/Jvb0=;
        b=nA56w9lJfeCAomLkCbRMPdtRRrjoL4X0I5/+xx38tvWglZ/1guG9JLGO1FSTHHer+j
         sB7x89i6j3LwSZ4OKkd1rsZ56hxUku9uVTV6jqHUnw++a6DDn38RDKeoL5bl9pWDD0sg
         R4B0+cqCnXhTpq2BIas2Hc1LInctGertTcVdq4FiOAN4Agj42vF+3llQrbTslP6NtTsG
         MkEmtwRivZWDkfYTEa3odMGvXNmsBLNUvaF+Ewhg01MvyWrISTw7DGE5BuJS39zSFHT+
         Wj5Ocd4ws9qMmZXvpytzTrWIHo4Af0vDAisGngy9c77I+PKpnX9lp1YAlK2UiB0gqsf4
         zlcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wg6wUsUBv3ps1Ea2+HUNQuXrVhFNTJMl9lhHXw/Jvb0=;
        b=fJmLW71mjMp6cU8gT2358nqtuTNXBXL9Z2ZjOk/KYEgHCqsodQVB/dlP1JluoJIDve
         s5KpnENsIYmOE4o9T9ZtA8+BkIV3DosCP3xFMuWtqjEnOgaqdaPVL9KLzz3183VczMZJ
         a/B5IDhcsCdRA7LRYfO13aUlY8COZXF8HxF2FbOqmHDZNVNtufMLNAIJ5mueO97JvfLQ
         R60TkDgpLRZ5w4AvqfwKNFyXM0mCwsk+GmVTfv/UYHgb6LJe4TNvy1SisSwBhOlvuzsw
         W4qybri1H8ap1VHVQ509Wkfh+7X9mcFFIhjNo6+VT3RVLEkBB2sJaVyPB21e8hKwXE5F
         5/yg==
X-Gm-Message-State: AO0yUKX5qlBcabqo9p72iYulAuaIjRHv1wLaulByHDGzoBQ1/enoXzaV
        WF8NFRdxuhLElP9TKJ36fUgXLDO7mJ7bd6m5E+UwYA==
X-Google-Smtp-Source: AK7set8tFfANC5MbpetJA0jL9tHvmdijSpG9DNOn2/nW/KMUbdcI25seKBHNiihBKKS26RpThhHHWCYHrT1gErUzopk=
X-Received: by 2002:a5b:bc5:0:b0:96f:698f:6136 with SMTP id
 c5-20020a5b0bc5000000b0096f698f6136mr586144ybr.91.1677011051617; Tue, 21 Feb
 2023 12:24:11 -0800 (PST)
MIME-Version: 1.0
References: <20230221102605.2007396-1-linus.walleij@linaro.org> <167698731618.2349693.5906822374742470475.robh@kernel.org>
In-Reply-To: <167698731618.2349693.5906822374742470475.robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 21 Feb 2023 21:23:59 +0100
Message-ID: <CACRpkdYqC0nk4J-9QJiTEX-9R9+SOJv-9sfXi32pfABZCTbGvg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: MFD: Convert STMPE to YAML schema
To:     Rob Herring <robh@kernel.org>
Cc:     Lee Jones <lee@kernel.org>, devicetree@vger.kernel.org,
        Stefan Agner <stefan@agner.ch>,
        Rob Herring <robh+dt@kernel.org>, Marek Vasut <marex@denx.de>,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Philippe Schenker <philippe.schenker@toradex.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 21, 2023 at 2:57 PM Rob Herring <robh@kernel.org> wrote:

> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.

These are all expected. The DTSes have to be fixed, mostly
sanitizing node names and removing the pointless "interrupt-controller"
from the base MFD device, the only interrupt provider in this
silicon is the GPIO sub-block.

Yours,
Linus Walleij
