Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75CC260E9B2
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 22:02:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233992AbiJZUCQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Oct 2022 16:02:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234015AbiJZUBx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Oct 2022 16:01:53 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EECE57435C
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 13:01:52 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id a15so19151596ljb.7
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 13:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=to:subject:message-id:date:user-agent:from:references:in-reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GnXS8TIFkJvQIC9t/oWLC9m0IY5PsGt6PFcCSazh+EE=;
        b=NoATqSyjyoZ0XjlODJBeT9cHHsqAM2AVwGBmWXRRujd9v2bdLkUQbipXunJ20k4uBt
         4wMJU94eAilLuaYHBdvt2Zc5znZa0NiSUUXHQEkvxTQPbNRJrQ9Gz5qNUYPdzOJvZdIu
         nGWCO+g9ii0L2RLSXZbEQF8ckQ9dtNqTQ8Tz8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:user-agent:from:references:in-reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GnXS8TIFkJvQIC9t/oWLC9m0IY5PsGt6PFcCSazh+EE=;
        b=zromRkRz58Ddd1cKoj17Au4UcLyzM01itbrCH9a4zzvoF9cRIyIttXMr5Qtj90VW7K
         bw4oQpg/YmjhvvCsBuw8IJDL4gR7xK6+8Mq9hAelMdfmIb90nopQg2U1sasZUg2+9j9r
         i9Q8OH85zC/ahW3kZJLPEZq/gNg/mNMyPAM/zEeyflG5UTbOUMSjYObx5ltmmxeRL+tT
         VRBtLIOYf4ud8+mySuz0jkVX2xPZuFXh5bwFRPTPXF5wIRvMpqVAG7G1Wbwm84+PkI1J
         ohYk6P/ySvpRDYcGmT7ZkZlaiz6Ue/pkbS0STjy39idD7FzBRlubGos6YKcpqjeWGKEb
         /rfg==
X-Gm-Message-State: ACrzQf0M4zjuY/qb9spqazcTvatS2UJrHb18WtR8Ev5Ghcn3XQZ3TRyn
        ifMvmFtJKuB42DMsqnV3+XTNzNopcL+m4xSf7zV/Vg==
X-Google-Smtp-Source: AMsMyM6kBWiilqKfJ9EC2Ru879bM6yYh3y91TcLcmREOeIgiBGIeh9jfiVqNlw2kYndIw2Tlcudg9REgr+OEBl4ylEA=
X-Received: by 2002:a2e:8081:0:b0:277:b:33db with SMTP id i1-20020a2e8081000000b00277000b33dbmr9186348ljg.228.1666814511330;
 Wed, 26 Oct 2022 13:01:51 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 26 Oct 2022 16:01:50 -0400
MIME-Version: 1.0
In-Reply-To: <20221020225135.31750-3-krzysztof.kozlowski@linaro.org>
References: <20221020225135.31750-1-krzysztof.kozlowski@linaro.org> <20221020225135.31750-3-krzysztof.kozlowski@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 26 Oct 2022 16:01:50 -0400
Message-ID: <CAE-0n53yX4Q8cxLWGK1wG2veMNUb_aHSgFxBiRzuBRtPm3UPpg@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] arm64: dts: qcom: sc7180: revert "arm64: dts:
 qcom: sc7180: Avoid glitching SPI CS at bootup on trogdor"
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Douglas Anderson <dianders@chromium.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Krzysztof Kozlowski (2022-10-20 15:51:34)
> This reverts commit e440e30e26dd6b0424002ad0ddcbbcea783efd85 because it
> is not a reliable way of fixing SPI CS glitch and it depends on specific
> Linux kernel pin controller driver behavior.
>
> This behavior of kernel driver was changed in commit b991f8c3622c
> ("pinctrl: core: Handling pinmux and pinconf separately") thus
> effectively the DTS fix stopped being effective.
>
> Proper solution for the glitching SPI chip select must be implemented in
> the drivers, not via ordering of entries in DTS, and is already
> introduced in commit d21f4b7ffc22 ("pinctrl: qcom: Avoid glitching lines
> when we first mux to output").
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> Tested-by: Douglas Anderson <dianders@chromium.org>
>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
