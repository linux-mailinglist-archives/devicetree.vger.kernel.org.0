Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34969789719
	for <lists+devicetree@lfdr.de>; Sat, 26 Aug 2023 16:04:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230461AbjHZODu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Aug 2023 10:03:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229843AbjHZODd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Aug 2023 10:03:33 -0400
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0984D2117
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 07:03:31 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-d795e9a0816so1105892276.3
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 07:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693058610; x=1693663410;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OECpJpuzRGTpFfZZ6LF8wc0zJa5pdb5ic3jVGSKw5tA=;
        b=IoOq02SqV5/YJ0l7TNDsn+czct3ySCCjTo6xDwYZo0DlVxd9MH0jaecDJyA6vTTm7q
         uN8C9RUdAONSSAzUq2H0pO7A+sqgY6krm4QTydzZZujAMILU57AA7QaTFiMbLyfzRELw
         chNCTQgjF3byPArrCWUXl2pDh4oG6TKhrOcOTXhAnXH7v7Ao+yVIagN8kEsZGEkTX+CT
         +hmSScH5hr0fcCuDiNiaXicii7qZVjfos+l/Hv11p3kr5ewrFmMYaxVQ75n4vUU/JXO5
         yHZhfQjAIYF0DoZtSsNd1VVorIfE2JNHyzjF6lHRjUTg8j3Yd2+QccXNtdVyqsqFN+qA
         AAuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693058610; x=1693663410;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OECpJpuzRGTpFfZZ6LF8wc0zJa5pdb5ic3jVGSKw5tA=;
        b=BRMtZiMIQadzf7crvWpQrgvKtw+198zt/v+hLxVgYHu0TdEzcqLxtNaSBXIvPpA+s1
         qRjD7jyZjg9uWGlwHLq7JSLzZDHrCTVfeY4LkLsF1ZJ3yyW/VM+1hAI1kTL1eFZ49Z3g
         7lrUbkXYT4Dugj51jvQNrrp1P6xFU599Wce9Prj/HvGTmaI8CfqzlEmdzLqoARyXV7ih
         8Sc42M4CB/Clf1yaaRIZMEi3t+qxBr8sdp+yaOXrYLEcLHU9c3+fOLlPecp0BJwqxcLQ
         dVU0ixsr1u5HhhSaF8Ngjs6f0RJ2m2eUhM2M8XRlOygzrvMtE8dqzFPIg9eGQ9p/yCSC
         UIww==
X-Gm-Message-State: AOJu0Yw5mJ2s9sHK3SuYElpyjmQs9IFqR+TW9kG8sbxoII5/QrfHvZEa
        mu7n3UsOjuBddtYeDPq38Pj0270O2ItSOGawiB1cBQ==
X-Google-Smtp-Source: AGHT+IEOaxMx9taSxugSxzekl96KMLWldfs1IBAMMp77dpDFnRICyJmOoCJx0scz3kVVVi/oF4ptbpdLLjGOO64POUE=
X-Received: by 2002:a25:7352:0:b0:d4c:82ff:7bde with SMTP id
 o79-20020a257352000000b00d4c82ff7bdemr20094707ybc.63.1693058610193; Sat, 26
 Aug 2023 07:03:30 -0700 (PDT)
MIME-Version: 1.0
References: <20230822001349.899298-1-dmitry.baryshkov@linaro.org>
 <20230822001349.899298-17-dmitry.baryshkov@linaro.org> <2dea943a-7a9e-4963-8ae5-6b126c750f80@linaro.org>
 <CAA8EJpoB6JYrFPZ7PMrVYvuwxgu6SH1zuPWG3q8Xy1J2YcCPcA@mail.gmail.com> <aff8e42f-4861-4953-966a-c6ac735404dd@linaro.org>
In-Reply-To: <aff8e42f-4861-4953-966a-c6ac735404dd@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Sat, 26 Aug 2023 17:03:18 +0300
Message-ID: <CAA8EJpoRJwjfa1S=zqvTEQ6rJLkq_Py0KmcgQ7fYNj3986EDag@mail.gmail.com>
Subject: Re: [PATCH v3 16/32] ARM: dts: qcom: mdm9615: split PMIC to separate
 dtsi files
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-input@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 26 Aug 2023 at 16:48, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 26.08.2023 15:43, Dmitry Baryshkov wrote:
> > On Sat, 26 Aug 2023 at 15:08, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> >>
> >> On 22.08.2023 02:13, Dmitry Baryshkov wrote:
> >>> The PMIC is not a part of the SoC, so move PMIC to a separate file and
> >>> include it from the board files.
> >>>
> >>> Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> >>> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> >>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >>> ---
> >> [...]
> >>
> >>> +                     pmic {
> >> Are you leaving an empty subnode here?
> >
> > No. It contains 'interrupts' property (which is specific to the SoC).
> Meh, that's bad design.. should have been in the controller node!

It will not be logical either. The interrupt line comes from the PMIC.

Wait. Maybe we should do it other way around: move IRQ to the _board_
file, since it is just a GPIO line. Then we don't have to leave this
band-aid in place.

> But noboyd thought about this 10y+ ago so here we are
>
> Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>
> Konrad



-- 
With best wishes
Dmitry
