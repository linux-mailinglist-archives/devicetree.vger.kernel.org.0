Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99C76704671
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 09:32:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231135AbjEPHci (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 03:32:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231342AbjEPHch (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 03:32:37 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8012D46B7
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 00:32:35 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-50bc0117683so24270773a12.1
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 00:32:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684222353; x=1686814353;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DWutDj9rFJfM0+oJ1Ly346rYAwyaNPk/pk4POJZSdsI=;
        b=bzvM1sW0JmoVjw+AykUD0z+rxCejB9bI8j0PPHbUpxWJTi7uHHnqOZRiWETmluO2mh
         XR0SDWHvQBBspVLseyru1AE4Nh5jqncFI4aoSJ5Ed0zuCqfxDwJu1BwMJZsWBOqlxls4
         GkQV9Db61aB6OXTfQB+jW6MP/qVdKZ1oy8X2BgcXkk9+OTvBu0sfpwbTWI4dowlUIZWP
         z/SYwxej5brfwBKO6nK9eQQdcLRaN7hxQztl2Bid12t/vKPrFMKMMuX2K8VIbQViLJ1E
         3DeZuocbw/ebJDLiln92VTGqLqSB2vAifAoHL/TwtQJiQXr/kOR9f81D3XsMoA+4gxvs
         EO7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684222353; x=1686814353;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DWutDj9rFJfM0+oJ1Ly346rYAwyaNPk/pk4POJZSdsI=;
        b=fWbB04qr4pjO13UvOeOwNK2XQ4gF4u4OY/1eDwT3+tAussL44QoYy619muMDXSRswY
         mr3V13OsxnZ4D+CcyIJNZXxFTWrR+kM+CvLIR69uFw7PDIbwft83a8DGAkPF+Avum2MA
         8r5QaV+NKkLkmV24SqmhxnJv6REQ73wClorJP2wkx0vL1iMO+VWp7w87Qw3tKWYR2fI+
         icb4dPOaOvf1GghtxmPSDybO1NWshmDD+i0TVVdrXASsutONfi4tee1KTcSUbF1nDf/X
         E1QqS7DnW0TJVLKsh5q35xz9xUPqdxXBMyym/8KWvduhDJrJBPHcFPj+WKxinv4BtJpo
         KHxA==
X-Gm-Message-State: AC+VfDyj7NDMojcUkwlc9vM650qRwLoOT3eMoQemtTojbUgfSu6fNY3m
        B0IO8MqdIp5fhR8dAowJwjc1ow==
X-Google-Smtp-Source: ACHHUZ7m31GBThipErEZdbCQBKvFDt7rovo0tFIyowf02g8W/tBo1xEuU0aDTpXsBfEYbkdImm9+xQ==
X-Received: by 2002:a17:907:72c7:b0:969:f677:11c8 with SMTP id du7-20020a17090772c700b00969f67711c8mr21848043ejc.45.1684222353628;
        Tue, 16 May 2023 00:32:33 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:4d4a:9b97:62e:1439? ([2a02:810d:15c0:828:4d4a:9b97:62e:1439])
        by smtp.gmail.com with ESMTPSA id ml17-20020a170906cc1100b009661484e84esm10642620ejb.191.2023.05.16.00.32.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 00:32:33 -0700 (PDT)
Message-ID: <abadd2af-dbdc-4f0e-f128-4a361abb4fb4@linaro.org>
Date:   Tue, 16 May 2023 09:32:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/1] arm64: dts: imx8mp: move noc node to correct position
To:     Marek Vasut <marex@denx.de>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230516055006.320488-1-alexander.stein@ew.tq-group.com>
 <6ad832ff-9ada-ef06-7d32-50da6148b92d@denx.de>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <6ad832ff-9ada-ef06-7d32-50da6148b92d@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/05/2023 09:13, Marek Vasut wrote:
> On 5/16/23 07:50, Alexander Stein wrote:
>> The base address of NOC is bigger than aips5, but smaller than aips4.
>>
>> Fixes: b86c3afabb4f ("arm64: dts: imx8mp: Add SAI, SDMA, AudioMIX")
> 
> I don't mind this Fixes tag, since this will likely land in the same 
> upcoming release anyway.
> 
> But in general, is this really Fixes: material ?

Order of nodes in DTS is not a bug...

Best regards,
Krzysztof

