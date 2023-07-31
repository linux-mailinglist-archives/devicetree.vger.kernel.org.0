Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50F32768AEB
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 07:05:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229817AbjGaFFt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 01:05:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229739AbjGaFFs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 01:05:48 -0400
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E93E1BF
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 22:05:46 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-563d3e4f73cso2234742a12.3
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 22:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690779946; x=1691384746;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/qMzozlS01EvhKSIYBdj8EYscxDwpJrojnj03ew/Nl0=;
        b=vMLMmIv8UFxEoNtq9lst6r8TdPip2XqlRQvEUJ9YuMmzJFqV+b6HRa4PAkUQhZxqZO
         j7ToKnFaS6g3/+hVXiRXPkUh318Y6LtxrbJe7Dy+Hi9nHKCMPHI2AdnlCx3riwHW8PSG
         FHZO2a58LjQx08bx8UpNulujXQIFJ5XKIBXOjZnymt0MssA00ch6klqlwGB4UiamoAwc
         PUvZkne5Gb+SESf79Wfg1nkXUOSfz7zLsaqmBchMn1aXARh97Y6zLDC14+YwmZDmM2Vy
         OYz5pgoQBxFjnnKPQV94vGJx29No6Tgml8WMDDbBIZC2FNRw5jbXTqkG8JuEnauclqrd
         NpVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690779946; x=1691384746;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/qMzozlS01EvhKSIYBdj8EYscxDwpJrojnj03ew/Nl0=;
        b=OoHSYT3p70rT9tI4CGsWwsDB2BfcU4nRFRKhZwnWEp3kFhFVFUMXOvGgL6c/MI9Vpe
         KQv0J6rcwypRmQjUA94SM1cF5w/+ENE98fKKCk5CloCpkl42AqkIzA2+f1Pljv9qDs06
         nhaBwDlTmDzOoRXRCxnUlwOg8iXkookFQmuRaXxDwTDjchPjWKgxChGdAMTlhHPPWhVl
         2ucJiqphtQKCwPu2kgn+APb8X/dXhBkCY68H02hGnJyIutqQ5xSvvE0tphK4r055lprz
         +BPbAQRExuZXxIE61rI0rIY9ZcnQE086SZfzycpGIAKlErDc5JMxRbNCG2RZUFyukwwE
         wC0w==
X-Gm-Message-State: ABy/qLaHH/eeQ+muUZ5utlIVRlEDobi7InJQXS6EsxNN53xOcEASGyHy
        oKivh9XBuT7upiLnLvYcY/RsbA==
X-Google-Smtp-Source: APBJJlHkHWAlDNYLUb3vJ95nRjSnTPzvUIU0+adOasrwlsSU1tTRCXf9sg7a0lGvv/NSr1nWTOwy3g==
X-Received: by 2002:a17:90a:86c7:b0:268:2b5c:14c with SMTP id y7-20020a17090a86c700b002682b5c014cmr7247025pjv.13.1690779945646;
        Sun, 30 Jul 2023 22:05:45 -0700 (PDT)
Received: from localhost ([122.172.87.195])
        by smtp.gmail.com with ESMTPSA id j2-20020a17090a94c200b00263f33eef41sm7076501pjw.37.2023.07.30.22.05.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 22:05:44 -0700 (PDT)
Date:   Mon, 31 Jul 2023 10:35:42 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Viresh Kumar <vireshk@kernel.org>,
        Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: st: spear: split interrupts per cells
Message-ID: <20230731050542.uibx3cwfxzxydhpe@vireshk-i7>
References: <20230730111536.98164-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230730111536.98164-1-krzysztof.kozlowski@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30-07-23, 13:15, Krzysztof Kozlowski wrote:
> Each interrupt should be in its own cell.  This is much more readable.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm/boot/dts/st/spear1340.dtsi |  8 ++++----
>  arch/arm/boot/dts/st/spear13xx.dtsi | 24 ++++++++++++------------
>  2 files changed, 16 insertions(+), 16 deletions(-)

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
