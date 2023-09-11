Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6C2C79A57F
	for <lists+devicetree@lfdr.de>; Mon, 11 Sep 2023 10:07:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230188AbjIKIHb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Sep 2023 04:07:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229546AbjIKIHa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Sep 2023 04:07:30 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 711E21FC0
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 01:07:02 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-31c73c21113so3817765f8f.1
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 01:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694419613; x=1695024413; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BQAVKqReSVnSI4Ydt6YoC8xFDTISY4VfD72WdfhWLqk=;
        b=oxhlk0HhipKP6mVF8WeadG0eTzGZCGC3ZXXkP9EBCvDsDf/B1R+8cOCuso7hJfaRix
         lJmMg8dtkMLJrnuouoLkBkTXLuUvCL9QBwE3dFZXF7WToTdOuMR96zTAtPqM7faqaTME
         yipDeITm1Vs1JfR+iIk9I9cjgN4KosJsYIJc2WGeLndCxrepFi89qU58jkZcaMDpYDyY
         7BnONlPK6xwVXinO8Z5XHGi8ZH+uU6eg75K7y2hC5I26VDEWPiB1Rbydo270NxyZC43x
         XH4lUW8ebWqy45md3dieWx/LIlmUbQedKGf1f4oIzapHxKYelB8SyuP83KT5bEXlBSFJ
         CZHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694419613; x=1695024413;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BQAVKqReSVnSI4Ydt6YoC8xFDTISY4VfD72WdfhWLqk=;
        b=lnN8nWWg1e8/LDq706ZSpyqyz8oJbeBG6tm0N/W8kqEHeo7sE5M6qfaa6avryFbCsA
         osrJnUn1r9CcnIUQu5pRq7pKarMLNt3mG9A/Dk5iFW2i22ov+DhslUcSh/guPFsO+LkT
         hVE4+X6gvOtiC2MA9dAd2HFdF1aL7S6r6K0zIeY3HmyC9dmUkYvBkYcizWbtzHxqne2m
         63cmWRJ392Z9HdTFUur3s/ucWMjyG1y0rS0US0+LcG1dwnoXes0hBuvjJdlY4QxMkbUA
         aEfXHgFTI80M6/moBOHcvlSVSoE7XjI+DII5aHaV0qTeTVDDnkKae6VyAVDAnL81oCao
         THXw==
X-Gm-Message-State: AOJu0YwtHE4zhBq4/KVKNcVTvIqjrjMcnb5hx9W0+sx7z1z5F5B1s7JS
        /cqgyN4kh6cRD8rFrjFnlFEoUQ==
X-Google-Smtp-Source: AGHT+IEftHwy4siFn4uU6kwdtQfQwwzQkqPdTFYx+b5Hws8/3fiLDhgz05H5RrbONLPKhHuEKen7EA==
X-Received: by 2002:a5d:624d:0:b0:316:efb9:ffa with SMTP id m13-20020a5d624d000000b00316efb90ffamr6497563wrv.35.1694419613045;
        Mon, 11 Sep 2023 01:06:53 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id b13-20020a5d634d000000b0031c5e9c2ed7sm9318751wrw.92.2023.09.11.01.06.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Sep 2023 01:06:52 -0700 (PDT)
Message-ID: <9ba6da84-6ef9-1f28-75f6-bbdda571771d@linaro.org>
Date:   Mon, 11 Sep 2023 10:06:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v3 0/9] drm: ci: fixes
Content-Language: en-US
To:     Vignesh Raman <vignesh.raman@collabora.com>,
        dri-devel@lists.freedesktop.org
Cc:     helen.koike@collabora.com, guilherme.gallo@collabora.com,
        sergi.blanch.torne@collabora.com, david.heidelberg@collabora.com,
        daniels@collabora.com, gustavo.padovan@collabora.com,
        angelogioacchino.delregno@collabora.com, emma@anholt.net,
        robclark@freedesktop.org, robdclark@google.com, anholt@google.com,
        robdclark@gmail.com, airlied@gmail.com, daniel@ffwll.ch,
        jani.nikula@linux.intel.com, mripard@kernel.org,
        dmitry.baryshkov@linaro.org, matthias.bgg@gmail.com,
        agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        virtualization@lists.linux-foundation.org,
        linux-arm-msm@vger.kernel.org
References: <20230908152225.432139-1-vignesh.raman@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230908152225.432139-1-vignesh.raman@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/09/2023 17:22, Vignesh Raman wrote:
> The patch series contains improvements, enabling new ci jobs which
> enables testing for Mediatek MT8173, Qualcomm APQ 8016 and VirtIO GPU,
> fixing issues with the ci jobs and updating the expectation files.
> This series is intended for drm branch topic/drm-ci.

Please send DTS and defconfig separately. These patches should go via
subsystem maintainer, not drm.

Best regards,
Krzysztof

