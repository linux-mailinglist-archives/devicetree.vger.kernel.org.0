Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4469731200
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 10:22:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239593AbjFOIWA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 04:22:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244797AbjFOIVi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 04:21:38 -0400
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2754C1FEF
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 01:21:36 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-57015b368c3so13103547b3.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 01:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686817295; x=1689409295;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=foLLiRgNOKjufhl0+Ievg7NOKITaDQxzxm6xXqDOOd8=;
        b=aek2O+NN6U0YEkCDye+aa9lAK1luqrHA68rdWdmowGR93RtPiIoXe2svqt438s/0Ns
         PsiRmNCvIs9VzwvpT6PpLD3XV73XGY+7pqOPXPboULjgSTreGcRXp0+U3wM0ZFcJ1lHU
         cHdHQIoWTaeLZ69HPOVhARlVJUVNTt3yVmrsM/zrkP8P6sDkCCzAtg7TVPXvMmQ45WSa
         u4ydV4bTrBLRkW/l+SAPSKCZCa0wZqcuHsT8gyDq8XXYw0+KTzKEiRzti6M+S+935BfW
         /O6TaRe/VhrIb9WtnnrGB2wWPfQJjzvbBJ5/yCkZ5ghPfkC4RXuUVyMXO5rYZ/Xqdb1c
         emYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686817295; x=1689409295;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=foLLiRgNOKjufhl0+Ievg7NOKITaDQxzxm6xXqDOOd8=;
        b=HtEhYhp9/Ribx1Vyf6YbQesz4rMrG4up92t0IQfpgK1GOHuExPYfSs2CK04RLQsDHk
         rLGG6p+MU8osStcSlucfAPeBzHdqYJiKM7Y7bT6aMT+WzxTUi/uWq8gjFpvp7Q3ITB89
         lI02UF6dcRXHXclxMp+X6UaVAmSLC6L365dofcRzg0y0YJixW4AgTR2qIFjH9S1VyDDu
         oaMmxT51M3+r3NjjWJormLKbAZLqJFUdtnWpz1/4KUOxTGU1ab3+7TP/bpx+gf08xvLp
         CxYM8yen1u8byae5NWOhfjyanbHvjMCutSbJV4R+bzfHtcck8FMC3hMBG1x5m/Vk2QXB
         4L0w==
X-Gm-Message-State: AC+VfDyB58rjiMJtMz/dPgKkpBhTcb6NZzZmBqaHhL8sHhPaVNYYE8np
        A4py3L8srEyyfbPVsfcK9ioqWNjyNKPxJ/F4gksT9w==
X-Google-Smtp-Source: ACHHUZ4jRvSZoKYPV35zelD3a3xpXGKBhbM6xFiozCfFKBZMrS/OtxoWwMXJ/Lq9woF7ygPiFqUvAvDvlLiCiylvqwE=
X-Received: by 2002:a25:db0b:0:b0:bca:f389:a58 with SMTP id
 g11-20020a25db0b000000b00bcaf3890a58mr4059737ybf.2.1686817295402; Thu, 15 Jun
 2023 01:21:35 -0700 (PDT)
MIME-Version: 1.0
References: <20230615-topic-8996hdmi-v1-1-39584bfd68d2@linaro.org> <CAA8EJpqKNPRngiYHbXxR4MBv-V53-nmyS2t652sV_cXN49DGaQ@mail.gmail.com>
In-Reply-To: <CAA8EJpqKNPRngiYHbXxR4MBv-V53-nmyS2t652sV_cXN49DGaQ@mail.gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 15 Jun 2023 11:21:24 +0300
Message-ID: <CAA8EJpp-jiTOJ9-kajRPOdFOGNE2-o0dR0BuKAa47ZBErj2FAQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: msm8996: Fix HDMI node
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 15 Jun 2023 at 11:19, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Thu, 15 Jun 2023 at 11:12, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> >
> > A recent commit messed up the node name and compatibles. Fix it.
> >
> > Fixes: f43b6dc7d56e ("arm64: dts: qcom: msm8996: rename labels for HDMI nodes")
> > Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> I should use regexps more carefully.

On the other side, it looks like it is so broken that it might be
better to land a revert & proper commit.

>
>
> --
> With best wishes
> Dmitry



-- 
With best wishes
Dmitry
