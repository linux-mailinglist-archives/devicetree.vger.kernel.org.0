Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D8766E07AF
	for <lists+devicetree@lfdr.de>; Thu, 13 Apr 2023 09:27:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229506AbjDMH1r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Apr 2023 03:27:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229610AbjDMH1r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Apr 2023 03:27:47 -0400
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C49188A6B
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 00:27:41 -0700 (PDT)
Received: by mail-yb1-xb30.google.com with SMTP id e127so14370907ybf.8
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 00:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681370861; x=1683962861;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=abfJHn7ZwvAozrqfG1qVzD8XD4gBACYbJZHJhuhNXQE=;
        b=d7BTv/vmtNhnXAx+Il+EBpfKR/J/Xb1OCcaQ/NruFP/cYDcdWB/2E2u7Yjcre+P1L0
         q/ksHFqnvT2cNKvoyzTw8JCJg0lEwsJAHBg/WTWpuo6SIKh3vcIkF0tahvIOwaJQuF3F
         20SyDVfYmgMDtQHUexfuymfONHFU0z3nrJKzHb+NMT3X4ibGYWWcM5Bq1dWq9iZPLEVF
         reubUDf1O3UiX+YdFhAgb3y46zeH2OtiUqqoFWdJAK8LbODr71Pe/8R8hyYeOsfp6GD7
         MdpPSFFaJe2BCftQWFoOesmh85zqtgItDJqcPGT2JLoP93gtVT1he/kkNkedFDfXNsNb
         Wgxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681370861; x=1683962861;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=abfJHn7ZwvAozrqfG1qVzD8XD4gBACYbJZHJhuhNXQE=;
        b=WLxXT384P2MgBcAJ26ZOjOGMoYBEmlpK+er2vtyN65emDH92M1eqh1ib7ACuyOXlsx
         r7BibK+IZzECYasW7zIaH05BnIRAgeQPX030YzR7GEUK1wBg1mvBEjsr/G5pFKhBHAzF
         5pLD1cs+CH+5U1SSPAcGHTa4E7s4N4OdvdtTJ+eV1LtL0DH7+HH/qviNEBulL75EaJh7
         MncWsOidQz+qiy82/ON7OCmvtaEXiP5QyUq7IP0rUUoyan3lhf6OVQl2m0MeHitwT9m+
         zkT1rQ+ZhIjCOX1YIGgVH0N1wnUL1rk4s0ldUzoMux9D/ocOISTcBcpU7ncLOoH/ba62
         FFjw==
X-Gm-Message-State: AAQBX9eed4Ar/Pta2IEK1fF5f8/1/yZ3Q06+ypVpzENhoXkQXMvzZbtV
        vxhZEZEtfOZcEXIuk7xlTsU6tq5F0rpsBi5epbN1qQ==
X-Google-Smtp-Source: AKy350bH+ZiTXauAcVY8vTc+xQLvbz0J9sGd7KTjoAKKs3btY4h4QHUcD0S5ToJ0HGl5nKUCZ1NU6OZPPf3mLTTVNZ4=
X-Received: by 2002:a25:748b:0:b0:b8f:567f:4352 with SMTP id
 p133-20020a25748b000000b00b8f567f4352mr548520ybc.3.1681370860855; Thu, 13 Apr
 2023 00:27:40 -0700 (PDT)
MIME-Version: 1.0
References: <20230412-topic-lenovopanel-v1-0-00b25df46824@linaro.org> <20230412-topic-lenovopanel-v1-2-00b25df46824@linaro.org>
In-Reply-To: <20230412-topic-lenovopanel-v1-2-00b25df46824@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 13 Apr 2023 09:27:29 +0200
Message-ID: <CACRpkdb8DqeKHMSQQoNvJKiuUG2rZtHTbyo8rGMJ=L8FY4Y_ow@mail.gmail.com>
Subject: Re: [PATCH 2/5] dt-bindings: display: panel: nt36523: Add Lenovo
 J606F panel
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Jianhua Lu <lujianhua000@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 12, 2023 at 9:46=E2=80=AFPM Konrad Dybcio <konrad.dybcio@linaro=
.org> wrote:

> Some Lenovo J606F tablets come with a 2K (2000x1200) 60Hz 11" 5:3
> video mode display. Document it and allow rotation while at it (Lenovo
> mounted it upside down!).
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Looks good to me!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
