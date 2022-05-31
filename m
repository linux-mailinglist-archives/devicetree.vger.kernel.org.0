Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C741B5399D0
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 00:51:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348568AbiEaWvX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 18:51:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347194AbiEaWvW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 18:51:22 -0400
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 398AEA006F
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 15:51:21 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id 15so272179pfy.3
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 15:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ObltlVOkUE2OJx3EUGLxpwIeNHmLofE/Hbbs9yC2dVI=;
        b=Srv1f/KQO53oV2Tdw4Dlb/nPN3mc/93OBmsbGIWKG20D9iH/qqIWPLhb2EuaUZtJRi
         e8CKPb8b7fsheC3U2bWW3MVBsov/GIJalDF/qPgYQOu7L9A8yrYZpfWVA3mNwS7wl6cn
         PfWQykclGNYr8vAYQ1yIvaYi5YwBVJJQvU8qo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ObltlVOkUE2OJx3EUGLxpwIeNHmLofE/Hbbs9yC2dVI=;
        b=MsSfwbNvQGSSo6A1iWfFWQSqVfHcvXT9aPiCJDX7IhUN7rflfFH7mb/KivzJsWH8iU
         opmPWGpMJLXcai+7xKbDIeP0n3FrgzjN18axZQXgKNlhJLAJpY78kudFzpzIRXxsvLv3
         1UzRHHA7h5foZi2Ac4NznHOe0VeZ4yxKzFIY7QHqXA8VdKQ9npIqMS1EtOtEaudL6rHY
         zoh8h1UbT2Adwpvj7CdHmIBlY7q52rEWyYnetO6WDCxTNtjhmP5mj5F/MMtbebw0YoPD
         0g1a+tYqe5t3XRgTy6EKyuPystyLPvPBu3cAx6XQy6+infnrwHNDCB6sXT+mQqGoYxCQ
         pH/w==
X-Gm-Message-State: AOAM532s8s4mLdmIuw/JYdGQjgp4fhY+ECZfUAumDyYE2PcJObSWEJoQ
        AWk8ubdmEYfanQkvpsgrbvs21w==
X-Google-Smtp-Source: ABdhPJxsuSwLjSCmKCwHbwK6CS4COgLya/whNqnIb0LrGO6Da9iL3ujpmNVaCDeyUb3R7xd8Vt67QQ==
X-Received: by 2002:a05:6a02:19b:b0:3fa:3e63:15fb with SMTP id bj27-20020a056a02019b00b003fa3e6315fbmr40523358pgb.129.1654037480826;
        Tue, 31 May 2022 15:51:20 -0700 (PDT)
Received: from localhost ([2620:15c:11a:202:e69e:f483:e751:7c7c])
        by smtp.gmail.com with UTF8SMTPSA id i33-20020a632221000000b003fc5b1db26fsm2040797pgi.52.2022.05.31.15.51.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 15:51:20 -0700 (PDT)
Date:   Tue, 31 May 2022 15:51:19 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Taniya Das <quic_tdas@quicinc.com>
Cc:     Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette =?utf-8?B?wqA=?= <mturquette@baylibre.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-soc@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh@kernel.org, robh+dt@kernel.org
Subject: Re: [PATCH v3 3/3] clk: qcom: lpass: Add support for resets &
 external mclk for SC7280
Message-ID: <Ypab50H+Y9W9XnnU@google.com>
References: <20220526042601.32064-1-quic_tdas@quicinc.com>
 <20220526042601.32064-4-quic_tdas@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220526042601.32064-4-quic_tdas@quicinc.com>
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 26, 2022 at 09:56:01AM +0530, Taniya Das wrote:
> The clock gating control for TX/RX/WSA core bus clocks would be required
> to be reset(moved from hardware control) from audio core driver. Thus
> add the support for the reset clocks.
> 
> Also add the external mclk to interface external MI2S.
> 
> Fixes: 2b75e142523e ("clk: qcom: lpass: Add support for LPASS clock controller for SC7280").

This commit doesn't exist either:

git show 2b75e142523e
fatal: ambiguous argument '2b75e142523e': unknown revision or path not in the working tree.

You probably mean:

a9dd26639d05 clk: qcom: lpass: Add support for LPASS clock controller for SC7280

It seems you got these commit ids from a downstream branch, instead of an
upstream/maintainer branch.
