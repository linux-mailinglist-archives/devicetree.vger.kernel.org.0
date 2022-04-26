Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C24A510B9B
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 23:58:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355599AbiDZWBu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 18:01:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355601AbiDZWBt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 18:01:49 -0400
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9350518D685
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 14:58:40 -0700 (PDT)
Received: by mail-pl1-x629.google.com with SMTP id c23so27438plo.0
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 14:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=rpQ1dsqqK28Ak/taS1DzRmgf5kkbOUv2DkzvrHVSPGQ=;
        b=Rj/+ILa4I5+Lis3mLuWq/x9u4uAIopLMvs4grbk/GQtvVEJi398eCbNwgMorwZoD4t
         GPuGuYYS37+ioZJ1l0u9xV/KIJ+i+jDS884IQRoWJFNclH4O/5yzO5hM5TgffN5jyoVO
         gOZVHIz26c7vKU625IaUQDifTzIs/ZTmTM/bo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=rpQ1dsqqK28Ak/taS1DzRmgf5kkbOUv2DkzvrHVSPGQ=;
        b=5J0CIWFcte3nhB47IjwRXwqnfthtB1PO+/AOKbgtPko/0OvTqKn2AxfM7R7jIy8YmJ
         UHHVSjldDyTKv2RHzQNfgF4Z5UuT/2PTNxwFC+ufW689oiFy3DwPJbZ977WWcxx5ZMEk
         46zICHd9kBFFr7GOwSoQwoBNZSsQIhhi7sAhoPiYCiBgKtAJhdnkaJTfj08gmclXTHAK
         dkuwwgDpGwIXKGhYZehK5dhegMY/zxjvDHL8eu6zBG7Gzn1gWrT4Z2SpKCZQ3DZgOte5
         6no/xHRq3vn1ZlOuH+kP1K3VqO/UrRmJBsyrpS8oKoBuNizjrWCZmxJAe3Je2FN8Ti8m
         HxSw==
X-Gm-Message-State: AOAM533crTJHUwge9TQ159zh9tiwdelbjIt94dgV1C5zv3e4UX4TDScF
        JXQEzXjqKMnOXA2O69vtGheRuQ==
X-Google-Smtp-Source: ABdhPJyLd7Rwoiox3jQ1EVNx9gNewTckGJBm+F8Gq6TqzaDW1+q2W1pXNBAgLxIN3mbPFu0PvIOPlg==
X-Received: by 2002:a17:902:8547:b0:156:7efe:477a with SMTP id d7-20020a170902854700b001567efe477amr25589371plo.47.1651010320085;
        Tue, 26 Apr 2022 14:58:40 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:eb63:4211:eb5d:f6b])
        by smtp.gmail.com with UTF8SMTPSA id c17-20020a056a00249100b00508389d6a7csm17069215pfv.39.2022.04.26.14.58.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Apr 2022 14:58:39 -0700 (PDT)
Date:   Tue, 26 Apr 2022 14:58:38 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_rohkumar@quicinc.com,
        srinivas.kandagatla@linaro.org, dianders@chromium.org,
        swboyd@chromium.org, judyhsiao@chromium.org,
        Venkata Prasad Potturu <quic_potturu@quicinc.com>
Subject: Re: [PATCH v11 2/4] arm64: dts: qcom: sc7280: Add MI2S pinmux
 specifications for CRD 3.0/3.1
Message-ID: <YmhrDvBGhqtdQVQ1@google.com>
References: <1650957666-6266-1-git-send-email-quic_srivasam@quicinc.com>
 <1650957666-6266-3-git-send-email-quic_srivasam@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1650957666-6266-3-git-send-email-quic_srivasam@quicinc.com>
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 26, 2022 at 12:51:04PM +0530, Srinivasa Rao Mandadapu wrote:

> Subject: arm64: dts: qcom: sc7280: Add MI2S pinmux specifications for CRD 3.0/3.1 
>
> Add drive strength property for primary and secondary MI2S on
> sc7280 based platforms of rev5+ (aka CRD 3.0/3.1) boards.

The subject and the commit message are misleading. What this
change does is to configure these setting for all herobrine
based boards, not only the CRD rev5+.

That doesn't seem correct. The setting may be similar across
boards, but they aren't necessarily the same, especially for
the drive strength. One could argue that mi2s0 and the wcd9385
are on the qcard and hence the config should be in
sc7280-qcard.dtsi, however not all qcard based boards use the
wcd9385, so the config shouldn't be shared across all of them.
Please move it to sc7280-herobrine-crd.dts
