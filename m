Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7C761BD613
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2020 09:30:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726477AbgD2Haw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Apr 2020 03:30:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726457AbgD2Haw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Apr 2020 03:30:52 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16404C03C1AE
        for <devicetree@vger.kernel.org>; Wed, 29 Apr 2020 00:30:52 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id g12so822820wmh.3
        for <devicetree@vger.kernel.org>; Wed, 29 Apr 2020 00:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5cir3hSU9vYREyHnKXXc4jEYfDUGJRcsjkRDosrqGZw=;
        b=SN9CHto/lvnRKnVzHatlo9Bk3n6mrK+taJw1/YDutPfp3mn4CDAga4Uf7XIOjlYnIU
         8Se2NtbuFKW6DtjMWmIdYFzqBDGUqlcUhFtrGn2sDC8nzED2SUXESqGoosvXQIBRn2Kc
         yjS4g1CS62V+R8kUvjvS26FYd43HaLcNfjkm+NttFFL1AFwdrgBOyprjl8fEg2ifOVqL
         sIFTo/w3UIdxxuAu2zjNFRlmStHPXyuQnLcHtzb66OCueiN5YmS4O8s95eNc+U41plba
         Ybs7UPa7JytJ77nOhJSOFm0OE4uC7aPLjkAV0qssA5Z5O0mMXQa7SKt/nokvaWEdW2Ep
         eDMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
         :message-id:date:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5cir3hSU9vYREyHnKXXc4jEYfDUGJRcsjkRDosrqGZw=;
        b=hOlEND4+v2Qah4w+3uZPaEvI0PH/51ofrX5Ev8EkQmAJ2yL53rTHcDlMvV+Qpv2cmS
         mmG9n9V5ZMS5nV7xquSs8Y/FL/56U27bNdZhUL9oHcN/AiSl7BjlLJgrGoQ5eCSVolg8
         xlytWM+ZXj2Skxq5+QS8iQRip19fXoAP55pv8WX7Eq6RrlXnrIU0AtlplWKffY4cNroZ
         Rjy94fuU8SoeXOp5UUghVpb+YPkqKYIDBJCIiutx5Qc/X4ddUHHavrI1IVEXXgeAl0ne
         mzq5LaSbhMSu6VEd0Na5SFQm0fuNQsfiUbeJK+PNiI8+ardymraLjamo16W1ufgf06eo
         Fwcw==
X-Gm-Message-State: AGi0PuZYCsXedAH9XpHca0Kzgkd+O3GtDh1MW20d2QJi69h3nQHUyxYb
        gBq4i5kUDYkv90tr3jv91+BP/g==
X-Google-Smtp-Source: APiQypK0q9FlMYd4/tFHdoL8fCMv8pmOiilzczqSZepghPIPAGFwJEW67oJ+NvDJhRKLINjmWjU8rw==
X-Received: by 2002:a7b:c642:: with SMTP id q2mr1739567wmk.41.1588145450782;
        Wed, 29 Apr 2020 00:30:50 -0700 (PDT)
Received: from [192.168.0.136] ([87.120.218.65])
        by smtp.googlemail.com with ESMTPSA id n9sm28626564wrx.61.2020.04.29.00.30.48
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Apr 2020 00:30:50 -0700 (PDT)
Subject: Re: [PATCH v3 0/8] interconnect: Add imx support via devfreq
To:     Leonard Crestez <leonard.crestez@nxp.com>,
        Chanwoo Choi <cw00.choi@samsung.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Alexandre Bailon <abailon@baylibre.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Jacky Bai <ping.bai@nxp.com>,
        Anson Huang <Anson.Huang@nxp.com>,
        =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
        Abel Vesa <abel.vesa@nxp.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Saravana Kannan <saravanak@google.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Angus Ainslie <angus@akkea.ca>,
        Martin Kepplinger <martink@posteo.de>,
        Silvano di Ninno <silvano.dininno@nxp.com>,
        linux-pm@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <cover.1586174566.git.leonard.crestez@nxp.com>
From:   Georgi Djakov <georgi.djakov@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=georgi.djakov@linaro.org; prefer-encrypt=mutual; keydata=
 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
 KEmKjLDvB0pePJkdTw==
Message-ID: <86c1596c-d3c2-0c2d-4a7c-016f9cd7d4c4@linaro.org>
Date:   Wed, 29 Apr 2020 10:30:47 +0300
MIME-Version: 1.0
In-Reply-To: <cover.1586174566.git.leonard.crestez@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 4/6/20 15:03, Leonard Crestez wrote:
> This series adds interconnect scaling support for imx8m series chips. It uses a
> per-SOC interconnect provider layered on top of multiple instances of devfreq
> for scalable nodes along the interconnect.
> 
> Existing qcom interconnect providers mostly translate bandwidth requests into
> firmware calls but equivalent firmware on imx8m is much thinner. Scaling
> support for individual nodes is implemented as distinct devfreq drivers
> instead.
> 
> The imx interconnect provider doesn't communicate with devfreq directly
> but rather computes "minimum frequencies" for nodes along the path and
> creates dev_pm_qos requests.
> 
> Since there is no single devicetree node that can represent the
> "interconnect" the main NOC is picked as the "interconnect provider" and
> will probe the interconnect platform device if #interconnect-cells is
> present. This avoids introducing "virtual" devices but it means that DT
> bindings of main NOC includes properties for both devfreq and
> interconnect.

Thank you for your work Leonard! There is no build dependency between the
devfreq and interconnect patches, so i can apply patches 1,4-7.

Chanwoo, should i take also the two devfreq patches with your Ack?

Thanks,
Georgi
