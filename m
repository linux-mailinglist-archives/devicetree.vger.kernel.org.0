Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22FCB616ED6
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 21:37:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230305AbiKBUhi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 16:37:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230173AbiKBUhi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 16:37:38 -0400
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com [IPv6:2607:f8b0:4864:20::732])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 443086387
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 13:37:37 -0700 (PDT)
Received: by mail-qk1-x732.google.com with SMTP id z30so12573543qkz.13
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 13:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eKjiSgeUcjiYsL+rjal3rG7HgsFAJEM2LA39Z2mWIKk=;
        b=weoWs85NXxmwTHkGUU8b1jQfa/aoegEYBIVr5fBH0uDHW6JNBljTau6Asit3PtidLX
         vqQ3B//9q2ksTrRocZpOjmVcRQcnKw6GzHhjaQgX5dX2SUwhp7B35ZlsybqohOSznm11
         5GAJm2eBnh4xftVag689EcPq0WhcxJDsjXmf/2/leTIIYAMQElaNefk3BySxmMahV1dz
         G/lk56ZTsqZ4cdZLbir6Oq0hL6XD8HtQLmU/gCU7kDKQOSf2nrxjKTGXVc7sqcR8kycK
         OPyAwwyji6/JHV23cjSjSOovdoCB+KVjGrRrbu2M/mwX3SEV1k1vX2FX4mmVwelX6jjQ
         JeNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eKjiSgeUcjiYsL+rjal3rG7HgsFAJEM2LA39Z2mWIKk=;
        b=jTGsB1XECaGd5EDKkO2zITF/ESBas4TXUOFelHIZSLCJm6E9BXQiCEvst9+IhqTY44
         +W7wwdFerWLKc8hoASy6s0mwwHlQG/isH+lOYuz7iKda7gzm3QoAC0q7XYgAcfFW/QKt
         /I6GB6K0+M62Srf85DNDZw4S4qAWs46ry2Z3vcaOFUixaUaDKmHyClaMnOaY4l6I9lT/
         Lp92w03uN4aXdG5tCbXd5A4Wxpdq5T2aNexriZTi9DYk08xENQQgrU4UWSrof8g7p8D6
         6XyQFpUFQ2VxfeFzAkf/l2UTWKHN/kMt6/4KqiI8S4mQON0lu9mjx4jNU+eoVM5Asq+n
         Fc8g==
X-Gm-Message-State: ACrzQf2ZGeka8kBwgoKryA0cloKSmn0s2HLbGk/AK95CvlX9BxfyeVYt
        1wsEIEe+wLTAFAHhVKrgmM7KLA==
X-Google-Smtp-Source: AMsMyM5X695WX6ALriWJYQBKl3p4NPTNACCM4HfPhptmWfffFaWgY9I3wqvWulZZXoz5JDJYO3Euuw==
X-Received: by 2002:ae9:e111:0:b0:6fa:1ea0:69e1 with SMTP id g17-20020ae9e111000000b006fa1ea069e1mr16402503qkm.370.1667421456408;
        Wed, 02 Nov 2022 13:37:36 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:28d9:4790:bc16:cc93? ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id bp6-20020a05620a458600b006cf9084f7d0sm9116253qkb.4.2022.11.02.13.37.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 13:37:36 -0700 (PDT)
Message-ID: <cb40865b-6121-d4a9-a4e3-1f705f90948c@linaro.org>
Date:   Wed, 2 Nov 2022 16:37:34 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH net-next] dt-bindings: net: xlnx,axi-ethernet: convert
 bindings document to yaml
Content-Language: en-US
To:     Sarath Babu Naidu Gaddam <sarath.babu.naidu.gaddam@amd.com>,
        davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     michal.simek@xilinx.com, radhey.shyam.pandey@xilinx.com,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        anirudha.sarangi@amd.com, harini.katakam@amd.com, git@amd.com
References: <20221102090332.3602018-1-sarath.babu.naidu.gaddam@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221102090332.3602018-1-sarath.babu.naidu.gaddam@amd.com>
Content-Type: text/plain; charset=UTF-8
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

On 02/11/2022 05:03, Sarath Babu Naidu Gaddam wrote:
> From: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
> 
> Convert the bindings document for Xilinx AXI Ethernet Subsystem
> from txt to yaml. No changes to existing binding description.
> 
> Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
> Signed-off-by: Sarath Babu Naidu Gaddam <sarath.babu.naidu.gaddam@amd.com>
> ---
>  .../bindings/net/xilinx_axienet.txt           |  99 ------------
>  .../bindings/net/xlnx,axi-ethernet.yaml       | 150 ++++++++++++++++++
>  MAINTAINERS                                   |   1 +
>  3 files changed, 151 insertions(+), 99 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/net/xilinx_axienet.txt
>  create mode 100644 Documentation/devicetree/bindings/net/xlnx,axi-ethernet.yaml

There was a v2 of this:

https://lore.kernel.org/linux-devicetree/20220920055703.13246-2-sarath.babu.naidu.gaddam@amd.com/

Reviewer's time is precious. Don't waste it.

Best regards,
Krzysztof

