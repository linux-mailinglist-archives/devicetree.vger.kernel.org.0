Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 907E91D8909
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2020 22:19:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726374AbgERUSa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 May 2020 16:18:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726270AbgERUS3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 May 2020 16:18:29 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58441C061A0C
        for <devicetree@vger.kernel.org>; Mon, 18 May 2020 13:18:29 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id l17so13355393wrr.4
        for <devicetree@vger.kernel.org>; Mon, 18 May 2020 13:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BuJAIlJzNVfUnKFpYlKJrQaksovEb6r2MOQ70C3Y5sE=;
        b=SxAWC9wD97Nx9RF3x3Gt/iZfKa8M2cx51v1EjKYupLeGpf+OXQcl28YEfu07NNYBzp
         oG+fZxxrewBemj4QfFHPCIkMV+hJAXiaAzGtFMWoKqaKX9APTvHFWnpqBpvZStJP6MY5
         ZJL49q+YvgR1TsQW6DuEjc0vHci857/8g7zyBbXevlDpKtC16cdZUMFYwaSBtu/Azadr
         hcWfZEHCdEnqumpagVLp+S3vV4xtpbduKy+4NNZEuG21ZOK5ZrWQACre05Eqq834JNCW
         Tr0rVO6giGivX1D6FKN3hG2Y2HP0AELLOVuUdTe7C7HDFMMswLp//vZnCo7l4qyKIsq0
         HEGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BuJAIlJzNVfUnKFpYlKJrQaksovEb6r2MOQ70C3Y5sE=;
        b=UiT3FQT1u/KDXDNCbZgnMmpOB0qnRBKZ72iRFg5SSF09vmhVm+F58uLAIZsGpvMJzF
         hXxKYdKGWehFAMk3eH91cvSxF63z1pDqkbVRJLBQNcPJvKxBGzoIo+t8DFPgWfFqf4fS
         4q1aoQhRa/x6nc8nafD8A+efr+Lfb5LyvCwT7RM57PMMBIK0ZQ6xW1qUu1A+aTa6ycT/
         7b7low2VWcmbkjp7aXNf5RV6lcuxrhuHuEhRWNawcS8p1Iy+djlsZvY/3gCHDinaUO1j
         JoFpGoA/tpsqOaDJgL9AoYBTGnFDv+vd6ObA5Rkq1/eG4mLmQM5QlaU8RrRY9d52ELIE
         WMLA==
X-Gm-Message-State: AOAM531KluAyzKXFFvGt7qdDbCzL5wkrFd6r6r3E6H35D9hPZmEot8MK
        tdCgaqtCelqUigtyrIrDAWXF6A==
X-Google-Smtp-Source: ABdhPJwPiPMglSYT2/xaOY59iHe2nTbksNb6WmRUz9mJuUv5IbPqRFkca7BsAXDI/I3ojYQVTFNCww==
X-Received: by 2002:adf:806e:: with SMTP id 101mr21994991wrk.225.1589833107923;
        Mon, 18 May 2020 13:18:27 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:9e7:3ac5:a930:2cd8? ([2a01:e34:ed2f:f020:9e7:3ac5:a930:2cd8])
        by smtp.googlemail.com with ESMTPSA id z11sm17107463wrr.32.2020.05.18.13.18.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2020 13:18:27 -0700 (PDT)
Subject: Re: [PATCH v7 5/6] clocksource: Add Low Power STM32 timers driver
To:     Benjamin Gaignard <benjamin.gaignard@st.com>,
        fabrice.gasnier@st.com, lee.jones@linaro.org, robh+dt@kernel.org,
        mark.rutland@arm.com, mcoquelin.stm32@gmail.com,
        alexandre.torgue@st.com, tglx@linutronix.de
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@linaro.org>,
        Pascal Paillet <p.paillet@st.com>
References: <20200420121620.2099-1-benjamin.gaignard@st.com>
 <20200420121620.2099-6-benjamin.gaignard@st.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <9f737934-d92c-9ddf-f6fb-3ee64057ea18@linaro.org>
Date:   Mon, 18 May 2020 22:18:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200420121620.2099-6-benjamin.gaignard@st.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/04/2020 14:16, Benjamin Gaignard wrote:
> From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
> 
> Implement clock event driver using low power STM32 timers.
> Low power timer counters running even when CPUs are stopped.
> It could be used as clock event broadcaster to wake up CPUs but not like
> a clocksource because each it rise an interrupt the counter restart from 0.
> 
> Low power timers have a 16 bits counter and a prescaler which allow to
> divide the clock per power of 2 to up 128 to target a 32KHz rate.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@linaro.org>
> Signed-off-by: Pascal Paillet <p.paillet@st.com>

Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>

[ ... ]

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
