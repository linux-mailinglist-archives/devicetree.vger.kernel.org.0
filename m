Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE9A958EABF
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 12:55:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229868AbiHJKzy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 06:55:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229487AbiHJKzx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 06:55:53 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15189A1A1
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 03:55:52 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id ay12so4781374wmb.1
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 03:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=uLzHaOsqO+V47sNsu3NQ7eOVEKNreR7vrk1orA6ZleY=;
        b=fozMa+ze0kLO/rq0XhZh+UySZWY2WbbHTkW3ovbLOxDDjwkI/o2txXCccacp1NYYGd
         4zJjgRFOP94WG41v25ReDutUY1Pi/PTALr9UB/9rzNXkwMLCnagNw6rjik720Wyx/iSz
         C9cfZDxdPD1r2Kr00F+MoIBXkSWf17JWx44nbVpAkuNKqMRulWhMtdalwRF5ZO976jgW
         eHar4gwM5PODKbjx8AFgv0QEnbwffpiLPH92ugpONZlI52h8OngB0ACZwrJaQ9/v30gC
         AryZpXS7ecVDBHMfcOcFPRx2jQ+cyAYrYlGoI5yIOfOmeCfRwrUinb9tMQPRYwXEQLSr
         GvWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=uLzHaOsqO+V47sNsu3NQ7eOVEKNreR7vrk1orA6ZleY=;
        b=ScqkPl94Nh/QzYYwOrTNHVTS01qww/5hMaF0+xs+wE+4JZLz2VPPqcB/4HmA7tFpSA
         LJTMS23gke/aG9bhDCnhcsW2GumiAHNcksY4Obi45BskyNG4Kswvq90RGQ/KClytRcnZ
         t//P17VN62/us/uRMzD1q3EDaWnBjT/QYX29UvW3ZvGuB+VxW+nTsq6+AZ1DOVFXPonz
         3MOV+lKaZ3XuQv+HXCMIYi0ZrZDTJEuNMRRVfxNHO6zWScuIfzU3R6Syr8Y1WCF9gtFS
         go6KutRDcu+umtcfTZjJLqDpwMFsHX9fScV7BdCfbnAHILk9WtF3tJWAlEodCdDKqMqX
         N8tQ==
X-Gm-Message-State: ACgBeo0wbdsHbb1iwBuXYscv5X8q9KV2scWSa0EEOVH/yQmuIS0DqLnj
        uyoLHnWXWNn3oJqUu/KMDlTgeg==
X-Google-Smtp-Source: AA6agR42eTIQeJpfVwcTcfO1vOI9DkuwkBCklpdyITuI2iuhyEyXlE1deKN+pkT+XQwsDg0XVmzLog==
X-Received: by 2002:a05:600c:4e51:b0:3a4:e094:2520 with SMTP id e17-20020a05600c4e5100b003a4e0942520mr1996068wmq.123.1660128950692;
        Wed, 10 Aug 2022 03:55:50 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id c16-20020adffb50000000b002205c907474sm15899709wrs.107.2022.08.10.03.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Aug 2022 03:55:50 -0700 (PDT)
Date:   Wed, 10 Aug 2022 11:55:48 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Samuel Holland <samuel@sholland.org>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Lee Jones <lee@kernel.org>
Subject: Re: [PATCH] dt-bindings: mfd: x-powers,axp152: Document the AXP228
 variant
Message-ID: <YvOOtGN7c7oBwZis@google.com>
References: <20220810013430.27061-1-samuel@sholland.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220810013430.27061-1-samuel@sholland.org>
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FSL_HELO_FAKE,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 09 Aug 2022, Samuel Holland wrote:

> AXP228 is a PMIC used on boards such as the Clockwork ClockworkPi and
> DevTerm. Its register map appears to be identical to the AXP221 variant.
> The only known difference is in the default values for regulator on/off
> states and voltages.
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
> 
>  Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks.

-- 
DEPRECATED: Please use lee@kernel.org
