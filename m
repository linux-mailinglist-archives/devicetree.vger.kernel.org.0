Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29FB86C6D65
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 17:26:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231550AbjCWQ0H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 12:26:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231722AbjCWQ0G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 12:26:06 -0400
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A41AC1ACF8
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 09:25:53 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id h31so12890696pgl.6
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 09:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679588753;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MfzmMMPHAHCv0eGdx6+l4qSRYY9LIMjfpcaJwh7cu0A=;
        b=A20niN0sGt5qXXKXiMg/qowqgVK12RqhLhhQfbM81xC+gvtFaearrSYc141oEnQC8n
         HiFSXK9im263vg/+uBkC0h4NJDQSiqSpob6ZFm9ERaQX2RlH5ila4eDcHDExuhq+/bzb
         vyVg+RhPDn5uPycANaJNYq94Xm3BAOUZrqmeoICzYwlGOCpJ+rETEvlK3j96CInxxJHn
         dlCLHwLQ0srff2IYYazb6uW7r9Vvi09wklWrU37H1B+zUXOSan17mTQl6Z5Q/5naK7jR
         VrwaJf5TrNLzUDpKSNXI0d4dLpW3BJj5DfspXX/qvD3mwuo3JQagbBSd4CyhjItoRPVI
         8MmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679588753;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MfzmMMPHAHCv0eGdx6+l4qSRYY9LIMjfpcaJwh7cu0A=;
        b=eQ4vCL8Y/5ojKt1salv0rD3OrtQ2frtIciHYXeKT8ryssaNs9ooThFBVuYcJLvVKCM
         ZjhiLC0bymNHYBu9LZe67TyTgyQ2GikTxHlWULposUg8EBoTnkWNj1oJBxz/vyfKjCHq
         A2DsflDYHKnUj5xzMcTg0hk0FnXyAhj5l+ePhUyjQ/disyZtnyTKxm5mosYJVsJqM9aE
         F/fL+HOEHve5SPbROLuPIytOXfEV3uD+Hg8bQq02hCjlzkoGCxK1kwc0eeORTgcR/e4N
         5xIva/R/G2TUJsJaS2EiMUBjBWba2vccaqyAMsiEkqS8rc9M9XAU7oQBzCi3+TTx/+OF
         p+eQ==
X-Gm-Message-State: AO0yUKWASeE7PADM7YFT2bafQ0YiEuiz9xxjtczam6l0AQk5X70Yk0uu
        fapQ7hb6srh06fGChvqZ17IhFvPnwkPqJA3EtRE=
X-Google-Smtp-Source: AK7set/qJUzLCM9YnLG/ec+FnyueEfJ7IaWUKD75jQXP9oMwQ65JZGcIBrhZ42zXD8BRcPR4gkZCT/xAtky9kIpHFQ8=
X-Received: by 2002:a65:4042:0:b0:503:72c5:dd77 with SMTP id
 h2-20020a654042000000b0050372c5dd77mr2172086pgp.6.1679588753170; Thu, 23 Mar
 2023 09:25:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230317094725.48305-1-marex@denx.de> <20230317094725.48305-2-marex@denx.de>
In-Reply-To: <20230317094725.48305-2-marex@denx.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Thu, 23 Mar 2023 13:25:41 -0300
Message-ID: <CAOMZO5DT2wHw_wNOdG2zg1Jzb=Y_w8LswtxYGrNjhXqkisSuFA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: imx8mp: Add support for DH electronics
 i.MX8M Plus DHCOM and PDK3
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 17, 2023 at 6:47=E2=80=AFAM Marek Vasut <marex@denx.de> wrote:
>
> Add support for DH electronics i.MX8M Plus DHCOM SoM on PDK3 carrier boar=
d.
> Currently supported are serial console, EQoS and FEC ethernets, eMMC, SD,
> SPI NOR, CAN, M.2 E-Key or M.2 M-Key PCIe, USB .
>
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Fabio Estevam <festevam@gmail.com>
