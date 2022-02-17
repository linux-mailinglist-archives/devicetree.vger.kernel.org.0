Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 831694BA03F
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 13:35:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236795AbiBQMf2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 07:35:28 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231514AbiBQMf2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 07:35:28 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82BAF29E960
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 04:35:13 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id b20so8060203ljf.7
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 04:35:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=LWPD6Kgwc6gsaIwc/83kQA+CXXR+sZVYQ6mwJ+IXwU4=;
        b=hd6kCYaXxC+91SAwo9IDDgatkFAZJcDBJFFXqg+VxWpV/IpAs4DSzvsdPSJudNZm6G
         GCW0j+A5cZETBTsCPyWqRFV4dCYIoCZ0IBH0hgP+QalawR+1ORj2oPqNgxNJ/LyP0qaW
         PKLzU6hDgHozsS8MeuRGEZxYtvgsPf5nzkaebL0uFopcGy09/BKniZ3/2EQVmVl5IHyZ
         srDjK9bC2zmLLcRTq2K2uniI6JDKyv8D+PKh+mRFkSzE0qu3b9fFDmsbgH/JMm/Cufmg
         5pco7mnzpvz1+u8LFIO2h9EWncAeizuwiDPLdpQ0PMmdAKFb1g3dAhYjfG1zvU0ZinWo
         1KFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LWPD6Kgwc6gsaIwc/83kQA+CXXR+sZVYQ6mwJ+IXwU4=;
        b=1INingOsct7wW22Ahv5U1lpsYBuMYKFQtlwo0HvRx3VhC/PkF7ckfufcG6mEoUkBck
         wu6MIEukq20E+uKIgt2KDYwxWN1nRBfKhDyzinJ58BBtKTma4nzb/e0KyxLvvxYP5jy4
         t+nKft8k3q2ZejOSFNgmGIwYIhextxdqP6inbICnrke+OGJT5vljBPyHNJpFZw3spMY2
         oSIpKxBcDTOcnq8DVzzAb+r+sLkSdGGzSl73oGxxvS5gkjFAGaWPD2heoB6oCLX5NTAm
         YLf45P8LkBl1RwfAkgPZ3WZfZl0kdsySSv5b7n5aDfhJNGN5vGKWLMYlIsyJxIG3LfRv
         Jeiw==
X-Gm-Message-State: AOAM530q/A9HchSeCUaRSjLXcWwddB8b+D/fOkB7cnMb5EH1dh/KnooL
        Mvle2un2lepzWTqb9BPwk5U=
X-Google-Smtp-Source: ABdhPJyq4nnzOUVkvajYV7SPQuFphHf3LTtq76L3OCutr4uEkPgLgZrENhhQGtwqPU3Rgy4RmWFTEQ==
X-Received: by 2002:a2e:9b98:0:b0:244:c875:ba70 with SMTP id z24-20020a2e9b98000000b00244c875ba70mr2144114lji.284.1645101311775;
        Thu, 17 Feb 2022 04:35:11 -0800 (PST)
Received: from [192.168.2.145] (109-252-138-165.dynamic.spd-mgts.ru. [109.252.138.165])
        by smtp.googlemail.com with ESMTPSA id bt2sm3332145lfb.93.2022.02.17.04.35.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Feb 2022 04:35:10 -0800 (PST)
Message-ID: <cd66c9da-15c2-54e1-8016-8d951926eaa2@gmail.com>
Date:   Thu, 17 Feb 2022 15:35:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v6 09/23] drm/rockchip: dw_hdmi: Add support for hclk
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-10-s.hauer@pengutronix.de>
From:   Dmitry Osipenko <digetx@gmail.com>
In-Reply-To: <20220217082954.2967889-10-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

17.02.2022 11:29, Sascha Hauer пишет:
> The rk3568 HDMI has an additional clock that needs to be enabled for the
> HDMI controller to work. The purpose of that clock is not clear. It is
> named "hclk" in the downstream driver, so use the same name.

Have you checked that DSI works without the enabled hclk? I'd expect the
whole VOP to be clock-gated.
