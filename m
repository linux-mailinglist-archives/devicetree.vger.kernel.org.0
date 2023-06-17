Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC4F673434C
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 21:24:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232014AbjFQTYa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 15:24:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231918AbjFQTY3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 15:24:29 -0400
Received: from mail-ua1-x934.google.com (mail-ua1-x934.google.com [IPv6:2607:f8b0:4864:20::934])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C53CB1BD1
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 12:24:26 -0700 (PDT)
Received: by mail-ua1-x934.google.com with SMTP id a1e0cc1a2514c-78cdb90aa66so671306241.3
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 12:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1687029866; x=1689621866;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CAVqTNFm1Ko/hSDeJVRLXQ4E4KG1rIEAdrc8bWfuH9M=;
        b=lVG2S5Xx6tFg0dg4z6KHuNJpv5zw9bfbJORZYuLnU4hzhlKRIQMYa9+jW4VwKMjoaO
         qVXcYgejWNww7bCA45NVLUicUCOag7vOWx4axAvC3r0pbruDxES/YNnjXI+QwZwW1mTv
         SyH7G8xa0wD/g0OuGWAkTmKwifbZPSjh5IRffYshgeUS6lM7tjjCo3SAYf8O+aYKxVvL
         VWyQ4j75TLZdCGdAUClkkdPqJkoHzx5InuSk/W/qrJa5VCwGhmGMI9uxpmnqryyjnbMr
         +v2lv4iKCLbN3Y/76bFeU+uf6QlEzv4E0yMkRS1fPH3BRxvk/4aWxSrJrRQQHYBoHFmX
         cQqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687029866; x=1689621866;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CAVqTNFm1Ko/hSDeJVRLXQ4E4KG1rIEAdrc8bWfuH9M=;
        b=UvI4BvKvimNeOkHapQjbF+VpSkrIRglrNjGy2HuHFxHwrlzPt0n5DTN3V1XhTAZr9j
         UDRbNp0zkbiapYl9s+X3HLOjyZqTC2k7o5ZaniyCEd3FHNVwbiMR1cCqSlozHNvsojhK
         21p6dIdhk2CjUL9eS3KLwgJHJXwZogq6TNaaMsGSe91sQuRljs1XpIXgbvX865UAB2Cw
         PpkYMV6VH3peXbo8npNKBAbofRr3pNCfCN9UOA4gNMJrt7G/ZDvh2DJG4yTzRrTm7V5P
         lN/4/uOnp8G8Fg89JrRB9e+IlgBULVdReBzSPgl4zYCJFfKgmYS88zqrdTAMwjXh3n3p
         yuVg==
X-Gm-Message-State: AC+VfDwnN+w8zR+Z7t+GFwLkwGhlh5c/7gCng5ry814JvqTMj95mrp8o
        Oy5obFAP0UufwyV8VezVz+3Fye+c0hUgNHdsTnCQ+Q==
X-Google-Smtp-Source: ACHHUZ6T2y5qSbWChreVWtXuHv0D3Y2Yra3f3svS/wTGHSpGOvnjNQZNnXYhK2mtJC9tcD4ulS5TUIribjNZnkuC8nQ=
X-Received: by 2002:a67:fbd8:0:b0:43f:57c5:3eca with SMTP id
 o24-20020a67fbd8000000b0043f57c53ecamr824940vsr.35.1687029865896; Sat, 17 Jun
 2023 12:24:25 -0700 (PDT)
MIME-Version: 1.0
References: <20230615121419.175862-1-brgl@bgdev.pl> <20230617001644.4e093326@kernel.org>
In-Reply-To: <20230617001644.4e093326@kernel.org>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Sat, 17 Jun 2023 21:24:15 +0200
Message-ID: <CAMRc=Mcr=40aoXVcu2NDzz9C+GTPF-3WkyS=GEd-sQJTA9RftA@mail.gmail.com>
Subject: Re: [PATCH v2 00/23] arm64: qcom: sa8775p-ride: enable the first
 ethernet port
To:     Jakub Kicinski <kuba@kernel.org>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jun 17, 2023 at 9:16=E2=80=AFAM Jakub Kicinski <kuba@kernel.org> wr=
ote:
>
> On Thu, 15 Jun 2023 14:13:56 +0200 Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > There are three ethernet ports on sa8775p-ride. This series contains ch=
anges
> > required to enable one of the two 1Gb ports (the third one is 10Gb). We=
 need
> > to add a new driver for the internal SerDes PHY, introduce several exte=
nsions
> > to the MAC driver (while at it: tweak coding style a bit etc.) and fina=
lly
> > add the relevant DT nodes.
>
> Did I already ask you how do you envision this getting merged?
> You have patches here for at least 3 different trees it seems.
> Can you post the stmmac driver changes + bindings as a separate series?
>

Sure, now that bindings got reviewed, I will resend the patches
separately. Them going through different trees won't break the build.

> >  drivers/phy/qualcomm/phy-qcom-sgmii-eth.c     | 451 ++++++++++++++++++
>
> Noob question - what's the distinction between drivers/phy and
> drivers/net/phy (or actually perhaps drivers/net/pcs in this case)?

Not sure, but it seems that most drivers in the latter are MDIO while
those in drivers/phy are all kinds of PHYs (USB, UFS, etc.).

Bart
