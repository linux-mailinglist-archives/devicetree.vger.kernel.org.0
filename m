Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B81884D1B20
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 15:58:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347691AbiCHO7R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 09:59:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347606AbiCHO7P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 09:59:15 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9239B237EE
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 06:58:14 -0800 (PST)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 52C1C3F4C2
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 14:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646751493;
        bh=QoI6gYCzEPHlnRf7hBS/jsKubxk4d8dg14EW9oX2Wl8=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=tll8mZ+Fuhkt2A6pzQKfF7oaQb7EpiOT0Feg9ehEmAYWqFW2UaSdpvB5IxbivxeKV
         ownTYUFlWpuDs9yw0WWB0uQpKkTfequbK6wC+HJY7444XEwLWomPmc/v2iT6veKMlV
         PCXAwFBuDXMy1bmfHTLVmBsPHxe8u0ZM/pnC0cuOubgU5KdGfCl/MOQ8rKCbmbTGf1
         cEFenumUq8Yn0LDiQYEdVWeylYlgosIAGdkCu/FTcg4eKXWlFO+GsE0qElkFPKw8RC
         /fi6Rlb2qeg81SIrjgi3aiEANB9ok1llSVAuASN/K20/PQM78IMHweZstu7UBhzm6J
         MEb/pzrjpK35Q==
Received: by mail-ed1-f69.google.com with SMTP id cm27-20020a0564020c9b00b004137effc24bso10770274edb.10
        for <devicetree@vger.kernel.org>; Tue, 08 Mar 2022 06:58:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=QoI6gYCzEPHlnRf7hBS/jsKubxk4d8dg14EW9oX2Wl8=;
        b=GnPnZRWvnIoqSQoauXdR4QmtW6HTmhiJM9tYyuiwhWN29IWT7JXYOSw/NM+ZObJV9+
         JJ6gH7ZCm7a8Pv3f8gXx14+FzXoqeuzm7htACACCX70zEuem3TEheOB1YjgvbH3gsnbK
         9FAvKpZl5YCdxUBqUl1lQ+xNGYxVEMQfi9P66mhDT0eohbxEBVeQq/lUAcci/T0tFrM7
         s9FTri1kbdg6RyNNLgWPwCWU7NFXDlaZGnJcm8BDX2Ab3lR1s1n74uhfgWpWcsCU8yKr
         JY4TBnTdlBFmNBh5UUFC+5nqKtwHvuObrj0pKx7EEiZWgYu81JgSZUVEB6+Mi7WQ14UT
         wYag==
X-Gm-Message-State: AOAM533Y7d6U3IVG+BPFuYkSbx6p5HSw+kUQd2AyiYdFYONscw7RfhCK
        ZnOvPnfw95CCd5TmZKTC53akE1lJRiT4CCA+Snk0SU8hixTJQDsAICuE89OTEdzyp+RnUWWuCT+
        gJF+fa8Rc71krotzVO+yidBNtG4Mzv4SS+cg0kdY=
X-Received: by 2002:a17:907:948b:b0:6d8:27f8:ab4a with SMTP id dm11-20020a170907948b00b006d827f8ab4amr13433137ejc.39.1646751492679;
        Tue, 08 Mar 2022 06:58:12 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx7Fp2BFbe7EDlVkIH1yW95b4oxQsuzzjT0aFMP1UH/bjihagtZF0U3gD7nJpwi4v+0bIlKbA==
X-Received: by 2002:a17:907:948b:b0:6d8:27f8:ab4a with SMTP id dm11-20020a170907948b00b006d827f8ab4amr13433122ejc.39.1646751492471;
        Tue, 08 Mar 2022 06:58:12 -0800 (PST)
Received: from [192.168.0.143] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id gz20-20020a170907a05400b006d91b214235sm5977187ejc.185.2022.03.08.06.58.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Mar 2022 06:58:11 -0800 (PST)
Message-ID: <26658f45-ba1f-a633-ccd6-6f1d2f337341@canonical.com>
Date:   Tue, 8 Mar 2022 15:58:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 4/4] clocksource/drivers/exynos_mct: Enable building on
 ARTPEC
Content-Language: en-US
To:     Vincent Whitchurch <vincent.whitchurch@axis.com>,
        tglx@linutronix.de, daniel.lezcano@linaro.org
Cc:     kernel@axis.com, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        alim.akhtar@samsung.com, robh+dt@kernel.org
References: <20220308142410.3193729-1-vincent.whitchurch@axis.com>
 <20220308142410.3193729-5-vincent.whitchurch@axis.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220308142410.3193729-5-vincent.whitchurch@axis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/03/2022 15:24, Vincent Whitchurch wrote:
> This timer block is used on ARTPEC-8.
> 
> Signed-off-by: Vincent Whitchurch <vincent.whitchurch@axis.com>
> ---
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
