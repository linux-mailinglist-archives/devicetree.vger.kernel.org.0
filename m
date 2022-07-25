Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CC1A5806AC
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 23:29:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236761AbiGYV2x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 17:28:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236906AbiGYV2X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 17:28:23 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C95C24954
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 14:27:44 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id h9so17756724wrm.0
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 14:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=LC1MButyAjgvhVwdTxySQfcTsI905HcQoSgMguQbeJE=;
        b=XIuER+QEkXsz5IY+kHqI2bwpSJoq2OQb3wKfqZ+BK5c7jPlBbRxlnq8nlkhnCbbYr7
         GnGARLlnY71J07XrmeQ0i0J2rmmeTLMs72YlQ6lgmd3IIulDnr/vBnjIrD+U0JRBIHxs
         zMY0C01JwXyk7ZRgo06AtAS9x9y0BAQ6zuDsCorpBiNWnLuqJfRLrKkYFwaElNMulpjS
         EG1BOqq9BIYRA0VRAJ1HjUjZCjws1JdY1aA3WCaNq3pCJJyPyiKVBvWBd2wpIz7bCwTB
         u33/Vm7cN9g8DiKlRpfkVYhe2EIjV6e8Kmm2LyHFV2up/PzCUl4tskP84B1W9bCYDlFn
         pZzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LC1MButyAjgvhVwdTxySQfcTsI905HcQoSgMguQbeJE=;
        b=6uMKrpYAg1X0g5D1Ll5TKPos903fCONGAGDufAd8EBddcdHN5Y6/X2BTh2bKDF0MoJ
         XXrpc5H84ZlqB6YXlKVv+D9S+QPU0s+3LlGmKe0e2Chpoe/w94FheCQVNKGZXDOmD2gQ
         iz4oU1XlrnOgPvUtXAwnBeT/lS7HU1NK0Sdkq16a973idP8nOAl5GInF+YncBISYiX64
         K6Ac4r9Jp5CWU7ce/CDW/J54nFMHycHfydQsxMO2wQ9340o3LdN5TPC8ibsCYFrzdgcI
         YL08Hf9szmjp+u6jX9TPCWt6MTxpCn3UndHxd8SHhO29MsdwF8nT2ZdC+LdFE9+jckjB
         ijcw==
X-Gm-Message-State: AJIora9AJa70t5yOWZY5FA2fxFXUKgcoItbsAjWfDOSIryftR5h/ObxG
        875j7XspkuIpmkEFeDGnJhi2NQ==
X-Google-Smtp-Source: AGRyM1uhCs8VsFP2JwWvB8LbQsi/wD2WmCWt2Rv2KajohyBY0rFeGaFvWA4ssIOieb9jtBGlLP6edA==
X-Received: by 2002:a5d:5847:0:b0:21d:b75e:12d0 with SMTP id i7-20020a5d5847000000b0021db75e12d0mr8496954wrf.208.1658784457841;
        Mon, 25 Jul 2022 14:27:37 -0700 (PDT)
Received: from [192.168.0.17] (cpc152649-stkp13-2-0-cust121.10-2.cable.virginm.net. [86.15.83.122])
        by smtp.gmail.com with ESMTPSA id b18-20020adff912000000b0021d65675583sm12624688wrr.52.2022.07.25.14.27.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jul 2022 14:27:37 -0700 (PDT)
Message-ID: <0ad68731-1891-ced8-2a2e-682b50cc6488@sifive.com>
Date:   Mon, 25 Jul 2022 22:27:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [[PATCH v2] 1/9] dt-bindings: pwm: Document Synopsys DesignWare
 snps,pwm
Content-Language: en-GB
To:     linux-pwm@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lee Jones <lee.jones@linaro.org>,
        u.kleine-koenig@pengutronix.de,
        Thierry Reding <thierry.reding@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greentime Hu <greentime.hu@sifive.com>
References: <20220725212140.741644-1-ben.dooks@sifive.com>
From:   Ben Dooks <ben.dooks@sifive.com>
In-Reply-To: <20220725212140.741644-1-ben.dooks@sifive.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/07/2022 22:21, Ben Dooks wrote:

Argh, forgot the cover note on this:

Second version of updates for the DesignWare PWM driver to move it
from PCI only to both PCI and OF.

Fixes:

v2:
- fix #pwm-cells count to be 3
- fix indetation
- merge the two clock patches
- add HAS_IOMEM as a config dependency
