Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A73434F6B2E
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 22:19:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232444AbiDFUVK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 16:21:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233639AbiDFUUa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 16:20:30 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47A641DF673
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 11:02:45 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id u14so3339288pjj.0
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 11:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=FOXsiXJAKtMLGXYAK3r6oxcC+auPPBmHNsoM8lFZURA=;
        b=PAZ/A8rZS2CY5N8UncYL8kPPJsSOXNe1/sGOku+QaGVMSMpyJ3nupUnAicTVxA23vZ
         Wq3Y5a6Qgxs4ExAWWf2yJX6U4DqYlgivwlQ52e/7+C/Nz7vQXv5MFNwPhqCeG1MgZSvD
         4jWp9zXXk0cBtS1yn+3/Xk/S6556cO53u1oM4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=FOXsiXJAKtMLGXYAK3r6oxcC+auPPBmHNsoM8lFZURA=;
        b=XQ0wCVfgYZ+0iAqu78iT9CJuSzFhjPLvZDoYcpgmcxoBAqns2T0y/9fcDzeyQ1kCbu
         98n84Fq50zDgU7nSyPrpOWQm07hKWwmfmpdL141ppTmt1fC/6zCRUbeugQkXuzboV4co
         p++XkKVtC/7mEeN5dcbyMXZxFlBd9O2RhCS0LcreQXM3vi7+7YjTFurEYagcuVwfZpfd
         X3vUOHkNircOe46TyY1jjE398B9ebelQWXGL8BLjHuZb8L9BbN4B4+0Su2GN5MrGqy+G
         Xf2E/yk/oqJg9XLSYYIbrHJGYMmVN+uiFgW6Qv/NqNfrlOF8xgRi24MTWULnRX1i/0gy
         0iRg==
X-Gm-Message-State: AOAM533t+u7UeEF50pOmr8rkh0j71Ybc8YGQ/yap1mCxa0Yje7MIsECq
        +XiJVc0urdCj0f4GFASClgFdzg==
X-Google-Smtp-Source: ABdhPJzwbh3laItq2cdNTEF67N9FfUifv3GDwvRrfwlLqVMFVY92eizIQGODQlB5BG3tLdlTQ0MFaQ==
X-Received: by 2002:a17:90a:49c1:b0:1ca:c243:db77 with SMTP id l1-20020a17090a49c100b001cac243db77mr11069186pjm.215.1649268164727;
        Wed, 06 Apr 2022 11:02:44 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:dddf:7cc7:1261:9584])
        by smtp.gmail.com with UTF8SMTPSA id h10-20020a056a00230a00b004faa0f67c3esm18870536pfh.23.2022.04.06.11.02.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Apr 2022 11:02:43 -0700 (PDT)
Date:   Wed, 6 Apr 2022 11:02:41 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Manikanta Pubbisetty <quic_mpubbise@quicinc.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4] arm64: dts: qcom: sc7280: Add WCN6750 WiFi node
Message-ID: <Yk3Vwev3AgQgd1LK@google.com>
References: <20220406111303.27670-1-quic_mpubbise@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220406111303.27670-1-quic_mpubbise@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 06, 2022 at 04:43:03PM +0530, Manikanta Pubbisetty wrote:
> Add DTS node for WCN6750 WiFi chipset.
> 
> Signed-off-by: Manikanta Pubbisetty <quic_mpubbise@quicinc.com>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
