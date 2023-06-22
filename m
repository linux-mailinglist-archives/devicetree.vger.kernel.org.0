Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B261739ECE
	for <lists+devicetree@lfdr.de>; Thu, 22 Jun 2023 12:48:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230036AbjFVKso (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jun 2023 06:48:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229561AbjFVKsn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jun 2023 06:48:43 -0400
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C85019B4
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 03:48:42 -0700 (PDT)
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-bfee66a5db6so1567167276.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 03:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687430922; x=1690022922;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bLNUqqnYV+GhjehxbS2/d0eqIfch6gnyzu0xzweK8PI=;
        b=Ye2/Wg287S0oihR5Rwx2fymiVhTx9+q6nPTEEJZZ3XEInqSlCPVaBd7CL04E4ll67j
         Etf6guLFC+SYZ0EgNxymFFYhtJ2PHDaNRjMDbd4EjngBu4TiL8RAz4nZTqrZTrTYF3oN
         6weJwhZBfG9zvznWDc5ecwMzEHOxRzIo2UkRJPmNvehboOhQCnA2YT9LhgQQSzZ8x/Q2
         j/ljg/GYq5QHvFKQYbR2oB/BjcrNu99/uHbUOb3cQ5lFsuC76qN2xdSYhF9UZOZL4Wup
         XPKWFlqnEjRSU4G8XEzjJr+wB5IVFIJNWRN62CPBFvLw5ABWmzMARzXlv7MIjBVATX3q
         QSjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687430922; x=1690022922;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bLNUqqnYV+GhjehxbS2/d0eqIfch6gnyzu0xzweK8PI=;
        b=am6cjFgcjLtLlpAMu/k5c3gnuTDitUxM3rGXw/OD0fXYcTCdscdgG+vuS71paAGvsx
         FlrU2b8CdTYaKyRhupq7Mf292SMA+q6/ATE8QyY0q4dfxMvhPGks3p+Zo1vmr/pxvxgq
         K0LAwagBFryIOhV3sBql28rq6RVIG/LJGbdkzeI9TcSZSfhUrDOburNAK6X4XDFe2HBC
         CInd+lPcufUT8IVDL9Cq5TEeywcsBP6OpC9zeKwqDXbu0lybDEEdznkfNcPNWZoq/FIJ
         ECTADyW3UnuzQYmJ2WnIPfqMBW8W8XYmXRmwe2Rc5CSIG8M+g/xzFH7/s97X25Vej6AH
         CCZA==
X-Gm-Message-State: AC+VfDwSd7QNTWQ7aZS0CT8g277HtI+Zu3otdjdumbG4XfLkKujoVZn+
        zTp4evkPSSjLyjm5JXu6IuWzuyTBhaPbN3Bc2FUrFg==
X-Google-Smtp-Source: ACHHUZ49tD+Y7jnjH4zqBqxFeGP81AG6QY7NvOv5q1IXyZTuPBx1ItXGrZlrFN+dIKU4ESU2vHcKPgIoPdHkopItbUE=
X-Received: by 2002:a25:aaad:0:b0:bd1:5d4c:cdce with SMTP id
 t42-20020a25aaad000000b00bd15d4ccdcemr8471758ybi.43.1687430921739; Thu, 22
 Jun 2023 03:48:41 -0700 (PDT)
MIME-Version: 1.0
References: <20230622-topic-sm8x50-upstream-chassis-type-v1-0-13f676eb71f3@linaro.org>
 <20230622-topic-sm8x50-upstream-chassis-type-v1-5-13f676eb71f3@linaro.org>
In-Reply-To: <20230622-topic-sm8x50-upstream-chassis-type-v1-5-13f676eb71f3@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 22 Jun 2023 13:48:30 +0300
Message-ID: <CAA8EJpphEZa1Vfs1ipm+1x7MvYgF7HMiW-GfNzYi37YPoMzKVw@mail.gmail.com>
Subject: Re: [PATCH 5/5] arm64: dts: qcom: sdm845-mtp: add chassis-type property
To:     Neil Armstrong <neil.armstrong@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
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

On Thu, 22 Jun 2023 at 12:06, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Qualcomm's Mobile Test Platforms devices are handsets, set the
> chassis-type property to 'handset'.

Is it really a device that you can take into your hand and put close
to the head?

>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-mtp.dts | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
> index b2d4336e764b..41675a8de268 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
> @@ -15,6 +15,7 @@
>  / {
>         model = "Qualcomm Technologies, Inc. SDM845 MTP";
>         compatible = "qcom,sdm845-mtp", "qcom,sdm845";
> +       chassis-type = "handset";
>
>         aliases {
>                 serial0 = &uart9;
>
> --
> 2.34.1
>


-- 
With best wishes
Dmitry
