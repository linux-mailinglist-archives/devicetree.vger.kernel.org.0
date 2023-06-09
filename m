Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB5947290C4
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 09:17:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238617AbjFIHRr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 03:17:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238590AbjFIHRI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 03:17:08 -0400
Received: from mail-vk1-xa2a.google.com (mail-vk1-xa2a.google.com [IPv6:2607:f8b0:4864:20::a2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 170641706
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 00:16:57 -0700 (PDT)
Received: by mail-vk1-xa2a.google.com with SMTP id 71dfb90a1353d-465db156268so490696e0c.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 00:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686295016; x=1688887016;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SdzUODq092vssNCjaY28OJC5DZmw5dvgysp73BioZog=;
        b=POOAMVqxtB8CI+pQfbMOhq7/vziT4oouRj/LYE7jxMi/+jghEStnXdXYGSH7834jA0
         OXo9mwYmxZM7mxHfcGXhL8CiHDRpJ8O1enuI52uflLrRhkVEIx0q0nH85mYUtL3xZFLG
         F4wa7dLv9kWne5zD/e447gPlcIyG5YmDHvkHwZukVpE4JUrxZ7EZ1jNLbRY9+86ngBrE
         ZDkynl44mJXet7rDBeHBhe8AcSozeyqlXVpWAIbJY+sOe+KX/ZmUrc0+attAFDbhjto2
         s9pT3lKa6mcMeS3WKHc6qITGAs6CN0W92X4wDUz2G80p1Mwu/sTaSs4zyytZhFbDf/O6
         RTMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686295016; x=1688887016;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SdzUODq092vssNCjaY28OJC5DZmw5dvgysp73BioZog=;
        b=R+BGubtLgkDiKUkXZ09LZN+b6/rnrXd4kwREr816SaUvARgH0Qed0aexlFu8tpNG1Z
         VIL4q8vTT0bePMfVFELDmqmJ8aZSeSJKwozPbCBb9XM/1FhbF50KxfC78qcYuZKhEebt
         rbUd+81BbtFUPQLDZ/3Y1xWawxRa8WCCJmdVtnxyG/aPB4H+B6tFl8KXHtPE1gwAHPde
         BoTF/QJ6x6Ljk9peaRFTmy0Ut/qcid7yeDlWJoMIkZhPJHPxtQ9gDYWBv7ZXQhKbgroR
         9ewjX+i1l1MeYX8Faf1CpHE9dndWfDYnv0u07Kx/GlhYlECn+EsVvqWwQmwN0kFt4+5y
         yHSQ==
X-Gm-Message-State: AC+VfDwaQkj56gzHuwQsyO6tzoDCiBe9BGvFfm2/iy1GJOqA5Dbe2c+H
        eW8Kzqn3tFPxqPHLfStgfIfmjgMKtzitRKSYBV988Q==
X-Google-Smtp-Source: ACHHUZ4xmZ9Ll+lhWMk0L4kDIfl2Ua9rzGppkiag9B8/Fe8dXXBWSKcbe/ZixeV51pNa5+sgUmhszyFSS+B4Pq6upCE=
X-Received: by 2002:a1f:5f53:0:b0:45c:d69f:bb89 with SMTP id
 t80-20020a1f5f53000000b0045cd69fbb89mr498672vkb.5.1686295016178; Fri, 09 Jun
 2023 00:16:56 -0700 (PDT)
MIME-Version: 1.0
References: <20230605154230.2910847-1-thierry.reding@gmail.com>
In-Reply-To: <20230605154230.2910847-1-thierry.reding@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 9 Jun 2023 09:16:45 +0200
Message-ID: <CACRpkdYrZ+-7HcHiZ8T9CFQvPO+++2EsB0EQfs8OhNJivBXQ-g@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] pinctrl: tegra: Add Tegra234 pinmux driver
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Jon Hunter <jonathanh@nvidia.com>,
        Prathamesh Shete <pshete@nvidia.com>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 5, 2023 at 5:42=E2=80=AFPM Thierry Reding <thierry.reding@gmail=
.com> wrote:

> this is an updated version of v4 of the series, which can be found here:

Patches 1 & 2 applied to the pinctrl tree, great work on this series!

>   arm64: tegra: Add Tegra234 pin controllers

Please funnel this final patch through the SoC tree.

Yours,
Linus Walleij
