Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 926854AA5FD
	for <lists+devicetree@lfdr.de>; Sat,  5 Feb 2022 03:43:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236935AbiBECnv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Feb 2022 21:43:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235383AbiBECnu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Feb 2022 21:43:50 -0500
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70EECC061346
        for <devicetree@vger.kernel.org>; Fri,  4 Feb 2022 18:43:46 -0800 (PST)
Received: by mail-ot1-x32b.google.com with SMTP id l12-20020a0568302b0c00b005a4856ff4ceso6443451otv.13
        for <devicetree@vger.kernel.org>; Fri, 04 Feb 2022 18:43:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=ptR9arcgsxsyCBHT5svh2CJp+R1460e5VL52+gvh4sY=;
        b=iBWC0rDndMbAJeR7VoG1YfMyeH5uEtF6kNG1xDmR9IPm0ImGhINjF5GuREsuf36yTo
         k85S0GlwMXhBb6TtmfsU4wSvjqG/h7UCMO7NItqQrHCLmAXYu/KrvEISsdHBhOMsmW8P
         LPP3IWiYk3mGrlnkg+8Wgc6yhp/1bja5qc9Ow=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=ptR9arcgsxsyCBHT5svh2CJp+R1460e5VL52+gvh4sY=;
        b=gy87rWyKmf5ES1lOJoUTTRBz27Tg2rrAWyWu0qi2mYzL46m1AP8ZOcFyKCP8gidDfM
         iEYup1u2ZnuFeGoHCkAmJ/Rn70PEwh9kyiIDMbMkUrttF3vn0+0ZA0qyOG7OhxfGI8qU
         gONwGpX+84in5Uarz9m0oLsOOlS+kwygLbIZtlItUxyKdO60sHm6cf6JDz9wP8CEB5vE
         FtPatGwTT0rzsLB3DdWqgnyy1hJp2D6n9gDWyhbcqN5xlBgGsJDDDUIQzP0yWujCMVk1
         HDg+ybD0tn9RnA5bA//uMEHLEe2jTu68aGgg4rAs/v14lVulinFWNaws5wJDukCvuJ3F
         s+Dg==
X-Gm-Message-State: AOAM533Y6XyhykLXKBbx1sfrbCmgbwyha1eu5REdaywUs0Lt71sV8K7L
        kG/J4lE/WSCIhh1cK10bXP/MxIJTEXhGBcGNVOKJog==
X-Google-Smtp-Source: ABdhPJyJl7J0DMcwsErnsAZ2e6quUEfYM4CAsNNLCnhFVIsc+VDuH7t47yMKxkQ316BIMkPyEJu0huVO3XOQxkaUfoA=
X-Received: by 2002:a9d:6f06:: with SMTP id n6mr637882otq.159.1644029025712;
 Fri, 04 Feb 2022 18:43:45 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Sat, 5 Feb 2022 02:43:45 +0000
MIME-Version: 1.0
In-Reply-To: <20220202053207.14256-1-tdas@codeaurora.org>
References: <20220202053207.14256-1-tdas@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Sat, 5 Feb 2022 02:43:45 +0000
Message-ID: <CAE-0n52zypP5Uhikbk01ZrMRoXyLKBv9wgjX6uRYD0iCOeqJag@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: qcom: sc7280: Add lpasscore & lpassaudio
 clock controllers
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Taniya Das <tdas@codeaurora.org>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Taniya Das (2022-02-01 21:32:07)
> Add the low pass audio clock controller device nodes.
>
> Signed-off-by: Taniya Das <tdas@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
