Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 826395A3650
	for <lists+devicetree@lfdr.de>; Sat, 27 Aug 2022 11:27:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233171AbiH0J1r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 Aug 2022 05:27:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232059AbiH0J1q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 Aug 2022 05:27:46 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E209E31341
        for <devicetree@vger.kernel.org>; Sat, 27 Aug 2022 02:27:43 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id t23so83708lfr.3
        for <devicetree@vger.kernel.org>; Sat, 27 Aug 2022 02:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=QoG2kZvANOa1KzzuAuqk4o6JucinunK2vlw0X+QpXJI=;
        b=Z1XCv78/uwaC/R1lp+NBHe2pSJ65LzVuSNGJVVMElD1qqWM5rnLWO+B3jUii+tDa33
         NWlSin+243HoiAO2JBE/YNjAe89eVM8OvIjLLHNO3+TB1K2PrsjfeZ/p5cKY1ytSQoNp
         vPXZ8bm+X0ncJVX9f0SZjK9ma+d6VJ4eLdk/yz2RiJQQaWb8CF6rCty/yGuoi02AzCLD
         66Ozfl7eOFGKi6/aubb3bc2pa59RJmVQQ0DG6y3fRtkSYWpHfFNcuwepo0onN5FqNMCc
         hIhCOa8scrwM1XhN3R5bOeh2SgOpexr1T/Diawo6JjF8K61hzetiehznWqMnzri9R55C
         1ADA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=QoG2kZvANOa1KzzuAuqk4o6JucinunK2vlw0X+QpXJI=;
        b=nXNEtiWAD8aTSxp8R5j+F4fSybxBthQwLisM2Uaa+jMwVYNQ2rFqIt/+ECIlccN4k+
         U2i4y308c1ZHcpzQZejfQmQk955jekaFx18Ui41XcBTQC1jgzO/ga9G2+S59Cpf00YYu
         VdEvMW8I1Taq4XIDyM545O9O5yoMuy6Iimeb2ELge9T3x1jEvEHNQFTb5MpQZcf3xxeX
         A4gaaJsbd/UsLwyWdLARd8Uep9CI0f8QQgGGx7ifho9oTVR6+efmC1ii04vUDOSGpl/S
         bpK9YCD/y4vVtxYZ6Kmz9THwQqqpQ3XHvvz6v0LH49OKNWxxplQq7LcJ1u6w2kTXcpMX
         opQA==
X-Gm-Message-State: ACgBeo3Tg2yZv911okfHzeHplpLoAuEAIH+xRSOfaGIUt0iEONo2WVz6
        8/M3SpqL8OHRvLHiPXW+V8VU+Q==
X-Google-Smtp-Source: AA6agR7xvA7Q7WV4WaiBEj+7ndyUmtAVj4UMbhqL7EDPKvtjGa20fUGDe3o+z/JjZBcKbBrXBIuK7Q==
X-Received: by 2002:a05:6512:3084:b0:492:ecf8:3de1 with SMTP id z4-20020a056512308400b00492ecf83de1mr3739463lfd.575.1661592462300;
        Sat, 27 Aug 2022 02:27:42 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id z21-20020a195055000000b0048b969ac5cdsm134147lfj.5.2022.08.27.02.27.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Aug 2022 02:27:41 -0700 (PDT)
Message-ID: <a70a3d3d-8edd-5355-2e38-4d6285850229@linaro.org>
Date:   Sat, 27 Aug 2022 12:27:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] dt-bindings: Remove 'Device Tree Bindings' from end of
 title:
Content-Language: en-US
To:     Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh@kernel.org>
Cc:     Device Tree <devicetree@vger.kernel.org>
References: <20220825020427.3460650-1-andrew@lunn.ch>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220825020427.3460650-1-andrew@lunn.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/08/2022 05:04, Andrew Lunn wrote:
> As indicated in
> link: https://lore.kernel.org/all/20220822204945.GA808626-robh@kernel.org/
> 
> DT schema files should not have 'Device Tree Binding' as part of there
> title: line. Remove this in most .yaml files, so hopefully preventing
> developers copying it into new .yaml files, and being asked to remove
> it.
> 
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>

I understand you did not want to use scripts/get_maintainers.pl for all
files, but at least you could use it for subsystem...

Best regards,
Krzysztof
