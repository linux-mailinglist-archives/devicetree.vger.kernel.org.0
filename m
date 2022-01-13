Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1B6C48E035
	for <lists+devicetree@lfdr.de>; Thu, 13 Jan 2022 23:21:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231709AbiAMWVE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jan 2022 17:21:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235284AbiAMWVD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jan 2022 17:21:03 -0500
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 621BBC061574
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 14:21:03 -0800 (PST)
Received: by mail-pl1-x630.google.com with SMTP id h1so11586662pls.11
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 14:21:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=y/+dGDZUVY2eeNSKSlnflCwfNSDgkq9FO8ZrBACFhVQ=;
        b=VFRMGUaAYDI1ByzXMuvaz1FhAiXBfT0cs/P8TF5WfJRvpFIDSizvM0ZIQmnP05xgff
         sAVe4L/O0Wd5P0l06HLjn6cuRZuQ7qUIQR9Kj0FlwiUDECvUuPH2g8UUtirvsT/Uqt0w
         awEftshTmIpaTr+41j2nju0dQ4kI4hPxw1rz/e4YWH34t9e5TdqR5Jvmo4pTt9JYwxg5
         200giyJaH7OF5p+OGJ4WTvYnHmr4kRGu/z4VQ56bPFeR+ErQE6jxBy8EB/VT9c5F/nfe
         vNYTxpBzpGsPObT9DT6ffJ3ZVG93HEuCJMa+0Yt0SYP05gmSw1xoH6RKAyrvSexTwW6v
         ka7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=y/+dGDZUVY2eeNSKSlnflCwfNSDgkq9FO8ZrBACFhVQ=;
        b=C7xWdjaAhd9MqyRkVzhUWkxcTrKj1ymBZycJLj0JYT8ISJWUVuCER9kaPImhG+Z2hM
         ZaeFKnVvWi1frUVzjYviQTAzekNvcdRN70dNlz33QGllrz94aKR++2XNl8Yr5G7k+Wmu
         PGEgMD3Rc7J4qYa4ZeBu21TJd3vVnjeHt7/9RydNkd+hr8HjXGLc/aFVIrlDwomQQC3e
         r358LLLup7YmQe6IEZ01n7QRzRKnRHJws1avXDKIZ3msm00e8RK1SotQg3FQFvGskUiO
         7hichKpo190Dx20L/staoUJ0b5Yx0J8GGwbaVxFPWXF9FeBMg5Vb5Mbi20oZRUQGDldj
         SiCQ==
X-Gm-Message-State: AOAM532F0hNOaex3p5/NfL//tXpkeryP+vlT6PG9pTYiZFab0cwAoRSE
        vhqDfopOgQVurnQQl4wJUkZDnag6UTME9sWX
X-Google-Smtp-Source: ABdhPJzbybmm41eqPkmOQbL1nKomMXteedyO38S0PJqB/lFEb6uj48zMoAtz7afn8aiBif1L5SAfOQ==
X-Received: by 2002:a17:90b:4a87:: with SMTP id lp7mr16808661pjb.199.1642112462973;
        Thu, 13 Jan 2022 14:21:02 -0800 (PST)
Received: from localhost ([121.99.145.49])
        by smtp.gmail.com with ESMTPSA id s24sm3422580pfm.100.2022.01.13.14.21.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 14:21:02 -0800 (PST)
Date:   Fri, 14 Jan 2022 11:20:59 +1300
From:   Daniel Beer <daniel.beer@igorinstitute.com>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, Mark Brown <broonie@kernel.org>,
        Andy Liu <andy-liu@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Derek Simkowiak <derek.simkowiak@igorinstitute.com>,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] ASoC: dt-bindings: add bindings for TI TAS5805M.
Message-ID: <20220113222059.GB18380@nyquist.nev>
References: <cover.1642063121.git.daniel.beer@igorinstitute.com>
 <2eb938b60d232dfc48fcc53e3c87d1f773b3bf2d.1642063121.git.daniel.beer@igorinstitute.com>
 <1642091374.227294.3647181.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1642091374.227294.3647181.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 13, 2022 at 10:29:34AM -0600, Rob Herring wrote:
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/tas5805m.example.dt.yaml: tas5805m@2c: status:0: 'ok' is not one of ['okay', 'disabled', 'reserved']
> 	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/dt-core.yaml

I ran dt_binding_check against the master branch of the alsa-devel tree
and I'm not seeing this error. Obviously it's easy enough to fix, but is
there another tree I should be testing against before resubmitting?

Cheers,
Daniel

-- 
Daniel Beer
Firmware Engineer at Igor Institute
daniel.beer@igorinstitute.com or +64-27-420-8101
Offices in Seattle, San Francisco, and Vancouver BC or (206) 494-3312
