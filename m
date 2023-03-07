Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E4EE6AF9AA
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 23:59:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230353AbjCGW7X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 17:59:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230363AbjCGW7E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 17:59:04 -0500
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7D41B56E7
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 14:56:13 -0800 (PST)
Received: by mail-yb1-xb2e.google.com with SMTP id e194so13044425ybf.1
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 14:56:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678229773;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yT6vJ760dlo3cpztZcrQb2BiHonS1E/qGxacYw3cRjw=;
        b=mJRRLg4/5ng1ycFI2WzAFe+qf21Bs55snchruhUYb3mMDoJpJIfLUyXpkPhAxF9HvO
         8cZmkSrqt67dRX1mitN8alTlMiKOE3aKJ86zbo76PBLRJg53RlFN4bomIpgAwPrDRlT+
         BHE41Rx31odBtInyaCGdpjGxXuDhjdN75nTduUOKzWdQhL54GwKjnLuRoGtLHsDYQcp6
         TnYHYuo8QgQBpg14+jmzkn4nP6VHdHllE5bQs0ScWzPpNa80u+1RWcL7xFqa+P//VsEl
         CVj/v2nIBJInsMKlh01INA8Z0Wg4DOGbKGd9Ui/Y8aBaE4Cd3Bli0G1Pz8L0EWCtXEzT
         UbDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678229773;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yT6vJ760dlo3cpztZcrQb2BiHonS1E/qGxacYw3cRjw=;
        b=N+BR1OKJANuavq3I1hKHqdlG1twQIPFp7r6X4kr1FY/iFSrANBBDFOApaUzceArwmF
         Riqmuh/5KUXFups1uYJb8XKy5j//WBixfaxAfNdlkGxYCJorSmO/9eV11jbTO82wemmr
         8lSdp13ZFjQJWUcEO/V84pm4VZz6KCGTxfzHBOvs7nyU9by8ep0qpW3JEB/Xgy2XKdU2
         pAgQHvRS8r8OB4xCveAuLgmZzuFzkb8dssvklgW0R/bguaj+1Ci5v93RX1SbwxdKY/bG
         Ux8PEvkPcUI910RyJFpwI4OUXl1ZVJRuMEg7XqExz9I8PsoNO0ZaSjMIdpDepHS6KyPX
         Q1sw==
X-Gm-Message-State: AO0yUKVZ/mZTgkyOd1Z9oXRzURE7Mh/Tq/UiF4XafLu+f2ZoyrDhpeLN
        tQHxw3VnzDP9LNKI1ljCKic6l25a0gOW9fjczkptWQ==
X-Google-Smtp-Source: AK7set+Oyb0Gqd+OA3Mz2Jq1wBO6O3BOCVPQ+rKZXv7PqDQ9jZ3YW1GUW1m7oV8juDeJ5SWuXwhqWcU4UV/AbId5Gxc=
X-Received: by 2002:a05:6902:c3:b0:9f1:6c48:f95f with SMTP id
 i3-20020a05690200c300b009f16c48f95fmr7797151ybs.5.1678229772780; Tue, 07 Mar
 2023 14:56:12 -0800 (PST)
MIME-Version: 1.0
References: <20230119163201.580858-1-konrad.dybcio@linaro.org>
In-Reply-To: <20230119163201.580858-1-konrad.dybcio@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 7 Mar 2023 23:56:01 +0100
Message-ID: <CACRpkdYn90RMWP7=B8Y=-9MgF=Z1U=MS5upE26q7xbUu6vVX0w@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: display/panel: Add Sony Tama TD4353
 JDI display panel
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        dri-devel@lists.freedesktop.org, marijn.suijten@somainline.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 19, 2023 at 5:32=E2=80=AFPM Konrad Dybcio <konrad.dybcio@linaro=
.org> wrote:

> From: Konrad Dybcio <konrad.dybcio@somainline.org>
>
> Add bindings for the display panel used on some Sony Xperia XZ2 and XZ2
> Compact smartphones.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Patch applied to drm-misc-next.

Yours,
Linus Walleij
