Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2A87510B77
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 23:42:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238763AbiDZVp4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 17:45:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229759AbiDZVpz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 17:45:55 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 126904F9E5
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 14:42:47 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id a15so19123083pfv.11
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 14:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=5gf3nYF9WdYbXs00QxenyePit2YiJMZrQ9wLgL5Q7jI=;
        b=P1z9e3nqHlFrb7EEv991K5FPplMY7ZI1McJEtBr+SDacbu1UC4zCOuxlTzzfu9JQnl
         YXMyyZXta2j13wlKX49/81iO4BvwKpOOLdaOQ0x1GkeKE4+64YeAjG4x8QrMzxhJ0RZG
         GbldKWaqPCre7DNy7Nh+edcZiQ52K3xj50atE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5gf3nYF9WdYbXs00QxenyePit2YiJMZrQ9wLgL5Q7jI=;
        b=zsmwGHI5lYR7VOLq/HoE2tCmm0bynsono4FSG579e+ci1ppuoj/BUPvCnAe9IJKct1
         dnFEIIXDRUsd2jMknsE9TjH/Yj+tdVFq2jcd+gcD+1+pRq/TGb5RnOZ+3MlkUS1byHkd
         KzgMVidj27YZsU0/Ppu/SJl2Q/quWZNlxEf4dIti4MwjlbsAu91YBkaa1jgcrszRvSwo
         vG84Kq8EXXZEinAsh/5VXov9CQgfiu74Oz3dNkTcuC/X5EdDMjaQ+d1Y1ygiZ5lgq6Q+
         9i1mOIT0svGcX+7plrd3WphflibZvLAViiWtGYjbJnP3PQOE+xVlog0BrWdn6gxEnf2t
         ihYQ==
X-Gm-Message-State: AOAM532Ht1i6ljrqKh8cyVg+esNCRUvjpAejeJOQZUBENUYqESsmpKtg
        hBVzq0YOBHfVtYSBFOthNX6B0g==
X-Google-Smtp-Source: ABdhPJwkQycKLw71SdNQNmcdN0UC64HuTVTyy5S9/DPWZMaF7QkDs0vFU+GmjzeWN51eQxo23te19A==
X-Received: by 2002:a63:8b4b:0:b0:3ab:25dd:3836 with SMTP id j72-20020a638b4b000000b003ab25dd3836mr11262472pge.112.1651009366617;
        Tue, 26 Apr 2022 14:42:46 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:eb63:4211:eb5d:f6b])
        by smtp.gmail.com with UTF8SMTPSA id x8-20020aa784c8000000b0050577c51d38sm15727853pfn.20.2022.04.26.14.42.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Apr 2022 14:42:46 -0700 (PDT)
Date:   Tue, 26 Apr 2022 14:42:44 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_rohkumar@quicinc.com,
        srinivas.kandagatla@linaro.org, dianders@chromium.org,
        swboyd@chromium.org, judyhsiao@chromium.org,
        Venkata Prasad Potturu <quic_potturu@quicinc.com>
Subject: Re: [PATCH v11 3/4] arm64: dts: qcom: sc7280: add lpass lpi pin
 controller node
Message-ID: <YmhnVLAsKCDr+TEh@google.com>
References: <1650957666-6266-1-git-send-email-quic_srivasam@quicinc.com>
 <1650957666-6266-4-git-send-email-quic_srivasam@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1650957666-6266-4-git-send-email-quic_srivasam@quicinc.com>
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 26, 2022 at 12:51:05PM +0530, Srinivasa Rao Mandadapu wrote:
> Add LPASS LPI pinctrl node required for Audio functionality on sc7280
> based platforms.
> 
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> Co-developed-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> Signed-off-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
