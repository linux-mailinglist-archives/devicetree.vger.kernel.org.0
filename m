Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84F956E07BB
	for <lists+devicetree@lfdr.de>; Thu, 13 Apr 2023 09:30:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229830AbjDMHa2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Apr 2023 03:30:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229864AbjDMHa1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Apr 2023 03:30:27 -0400
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 202468681
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 00:30:26 -0700 (PDT)
Received: by mail-yb1-xb33.google.com with SMTP id t16so1499511ybi.13
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 00:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681371025; x=1683963025;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KMISx41rFHJr6iPn8d/tZBbPZ6RQuJBNrkQeU/K1yXU=;
        b=whbuHWWdeAp4lomCTHfm+944XRjCmlfBA90jDLyIgz/k4Q68dYfRYLCQr7OnWKZ6iw
         w1CohXPGGnBR6YAZhet/F2eVbZpLFwANShCSGyeBXLgWCiLtUqiQB08ier/YcszqhhaG
         iN94Wont3bxDiAQPr7LF3vFB0jZu50auLAmgDCmhkj1J53o7kz92DjHXKQw9f2lzdFqr
         v+xan3WC+MXrnXhXavLECWV/cRGzQ+t7/utnE0Z56n0y92KtbZZSu3qq7JE0v13p8KjG
         QC6GS2nT/4bKsPiS01F7V4Mu5OasU2u4L/PaCzK3p5TlGPHq+E+ZVX1uWfam1gC7KC0U
         dj3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681371025; x=1683963025;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KMISx41rFHJr6iPn8d/tZBbPZ6RQuJBNrkQeU/K1yXU=;
        b=gdu6aQXiDppvtw+dNWQ1eHY+kCBr4l6uvxARVTUApTfqdmgTMiGiFLeIDXAHtPDyrD
         akP9v9d8CELbRJXLXUjidNntKEWDS+m9iyQ9ES823Ad1HkfUC32C6hDU70HqWWJYr3XI
         HqrUFNvo924mExPIpos83IcJ2QukvgLxGaJ0AHmCnIs9xvDXRBMi6WFjKtIZalnxYeKE
         zxsi+ymA4KExS2pcvcTSq7aN6owQFbfwIhPXHoi2HWNE8Gc5pvkKweNEyLzgb+Z36be6
         oLc5mCwbPria04Fx4aUti09cyD0z60Bew6dzhLbFu+3pZvDRAbifdr7Xyuu/qUW9rgap
         gCLg==
X-Gm-Message-State: AAQBX9d4wzqyDhMBOthEvzY9pucYWGwUXdEtP8zBIKqAKDkJg+dtvns7
        /hG61LbRxGetcuGDyUSMs16LutMR0jLoh94nrV5xUQ==
X-Google-Smtp-Source: AKy350b2cjWnqq1MlUht/h20IguGQOltfjZsSdUZqWKxv0QURFl+0Do7uJK7FVh1PuYT/sKJo4dXyFtUbpgbxLcUBEw=
X-Received: by 2002:a25:d44a:0:b0:b8e:fbcb:d6ef with SMTP id
 m71-20020a25d44a000000b00b8efbcbd6efmr881101ybf.4.1681371025305; Thu, 13 Apr
 2023 00:30:25 -0700 (PDT)
MIME-Version: 1.0
References: <20230412-topic-lenovopanel-v1-0-00b25df46824@linaro.org> <20230412-topic-lenovopanel-v1-4-00b25df46824@linaro.org>
In-Reply-To: <20230412-topic-lenovopanel-v1-4-00b25df46824@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 13 Apr 2023 09:30:14 +0200
Message-ID: <CACRpkdb4WvCOCfUna+HDQNTJ0jwNDvVj272JqZj8cHWk47N2OA@mail.gmail.com>
Subject: Re: [PATCH 4/5] drm/panel: nt36523: Get orientation from OF
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Jianhua Lu <lujianhua000@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org
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

> Some bright vendors mount their display panels upside down. Add the
> required pieces to allow for accounting for that.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
