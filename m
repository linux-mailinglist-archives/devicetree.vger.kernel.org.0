Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 375894A630C
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 18:57:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241704AbiBAR5r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 12:57:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234979AbiBAR5k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 12:57:40 -0500
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8485C061714
        for <devicetree@vger.kernel.org>; Tue,  1 Feb 2022 09:57:40 -0800 (PST)
Received: by mail-pf1-x430.google.com with SMTP id i65so16519573pfc.9
        for <devicetree@vger.kernel.org>; Tue, 01 Feb 2022 09:57:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=GJ0qrx5Mp4w3Xs18ckk11+4zOC5Jvoz3CEpKaitBSfk=;
        b=nN6U8QmQr86yUBlkSqrKcdXXQmnjEID8Bq7kPVqNt8oUSRqaABg76JAselIAtRfbAM
         TM4hvvRzFCcU174FE/JjEGaXDUYx1vDgTnq2SMFAvuCzmNJW8NMQNxz9J91LvToAwiq2
         bzY2Wl2cUGp9EBpsdJghMhl0kT9R5NQGIHVZM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=GJ0qrx5Mp4w3Xs18ckk11+4zOC5Jvoz3CEpKaitBSfk=;
        b=l1rq81tVwfds9BmflbTzqr8T9JElxwXGp9cU4eW6PnhSiFDyOIRydfkkiCnFDqxhLF
         P797ZPCn47AgLLO4Yyag5nqbQDQEQQ2B1BKbBSFpxZiNC/hoDSvNlyB64OyG+ye3ffyh
         /YKmbnnHMGgVxmTWq6tANwPC7I8nST75JRI/Lkmh1ArvQG/X5dq3gyoKiSQ+DLfXvA04
         P7n2J2Pwh6vKsJf4PUT8nVVhQty5oq4LgjtvoP4AhhkD0RG/xy5D+iDf6DFS7iZjvwRG
         bJLQBMqec3eI3UsW/+lEAQ+quIRlg7QLYuux3hMNo9L6j19H/iDdlSZQJIF7MqDT8gGB
         rUEQ==
X-Gm-Message-State: AOAM531CHmYv2/mG+6IxNGGaoKC6vMNh8y46SD03IMIjNrQ+MXxALwXK
        mWt1DUVKwoFrblzUu9peqjPZkA==
X-Google-Smtp-Source: ABdhPJy11vBs8O9KVFKUg1ojzylkrZJoKpzxvQaPslmX1NNwEJpSWnlfG1qN4WF664MbSmKOdP5G/w==
X-Received: by 2002:a63:594b:: with SMTP id j11mr21693612pgm.4.1643738260340;
        Tue, 01 Feb 2022 09:57:40 -0800 (PST)
Received: from localhost ([2620:15c:202:201:aca9:b3a5:6f80:8fb5])
        by smtp.gmail.com with UTF8SMTPSA id oo4sm3635450pjb.46.2022.02.01.09.57.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Feb 2022 09:57:39 -0800 (PST)
Date:   Tue, 1 Feb 2022 09:57:38 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Douglas Anderson <dianders@chromium.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Shaik Sajida Bhanu <sbhanu@codeaurora.org>,
        swboyd@chromium.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/5] arm64: dts: qcom: sc7180-trogdor: Add "-regulator"
 suffix to pp3300_hub
Message-ID: <Yfl0kkJeErHD2qzg@google.com>
References: <20220201001042.3724523-1-dianders@chromium.org>
 <20220131161034.1.I7b284531f1c992932f7eef8abaf7cc5548064f33@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220131161034.1.I7b284531f1c992932f7eef8abaf7cc5548064f33@changeid>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 31, 2022 at 04:10:38PM -0800, Douglas Anderson wrote:
> All of the other fixed regulators have the "-regulator" suffix. Add it
> to pp3300_hub to match.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
