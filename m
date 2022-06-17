Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68B9B55007A
	for <lists+devicetree@lfdr.de>; Sat, 18 Jun 2022 01:16:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236606AbiFQXQE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 19:16:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1383440AbiFQXPk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 19:15:40 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D5BC66222
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 16:15:40 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id c196so5349561pfb.1
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 16:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=H0vnfvRaiAE5/3fzhOlFIVpSWB4iJ+BaHRXbfG6HFSY=;
        b=rRPQSPVNq/CT+zwXl2sbFBUkieLj9N+kbgn3HZ+qMWIwzowFdenRrwXv3DI62W41Un
         EB+f9zcLSiswZOrj57jhz7SoVD7VF+Qu6gaEENw8hufm1m5z7k4NZdn4FkY7UN9vui4b
         libyCqMpfyYNpaFhNbwHsGhnuGgEIRUDqN8PhFCb3n792BeHXrt3+w5+1U19ntoXggCL
         ea3ppgpk29+uiyiS3lScIxM6khUxnIFAkxWb+hSiTb7A4eKzQ/atLEzNpeFHLiTvFeNM
         EzaWQEp3w1NhYkr4Nj7SbFjWxt4kskeDXhaR7Eceuko4evHRMXIrWZHwsrhHDFC50Wyx
         szOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=H0vnfvRaiAE5/3fzhOlFIVpSWB4iJ+BaHRXbfG6HFSY=;
        b=sEkk/Gze3aXwU9/5rejnJNOyRZoAQddvub2tNLu4DjpBdcZiS/rkEezB7iVdOB6UDx
         tmRoweGsl5tXqSHjGw+11XzFo4c5QlVn7jkDDZYqOcV1RPuyCqyrSuwEm0Q6ual1WZfI
         JKSUZUBk4kGUEdSxMwQM7vHcpFKKEPdZMJ1ootb440IdFFMtoiivd6L1dyfefrc2E6+4
         EJBpGarVJ3lPbZQ3e3pidYFC0mSm9tg0ywa1HAvQxIqunPXHEbJy5IYV6sW1XhTou0mi
         sEAtdJQEEKM/O59owqSGXxohP2AxpxcT2ENcaT4SJJp12ucnsn4o3hPuCU95wLkKwLtl
         rseQ==
X-Gm-Message-State: AJIora/uZOePSy7oFaKM4MbOe1BVaV5fvsXtnuQmZML6B/O7RTGsbZTs
        bVARSIHndGUNO91wv9CpS03IeQ==
X-Google-Smtp-Source: AGRyM1tjK8q5tdcZ2B8/O1N1/HqA3murCScw+QM8NqtRMMYSzTHM0evcujrG4H17v4TwRmdOKYG0Jw==
X-Received: by 2002:a05:6a00:148f:b0:51c:70f9:b62e with SMTP id v15-20020a056a00148f00b0051c70f9b62emr12597704pfu.84.1655507739585;
        Fri, 17 Jun 2022 16:15:39 -0700 (PDT)
Received: from [172.31.235.92] ([216.9.110.6])
        by smtp.gmail.com with ESMTPSA id p3-20020a170902780300b0015e8d4eb26esm4047216pll.184.2022.06.17.16.15.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jun 2022 16:15:38 -0700 (PDT)
Message-ID: <bb6b5271-1dce-bbd8-eb39-34a5ac550cc4@linaro.org>
Date:   Fri, 17 Jun 2022 16:15:35 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: (EXT) Re: [PATCH 2/2] arm64: dts: freescale: add initial device
 tree for TQMa8MPQL with i.MX8MP
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Markus Niebel <Markus.Niebel@tq-group.com>
References: <20220616142221.3986670-1-alexander.stein@ew.tq-group.com>
 <20220616142221.3986670-3-alexander.stein@ew.tq-group.com>
 <e039bef3-3fc4-e11e-9dcd-fe3a764edf3b@linaro.org>
 <5819581.iIbC2pHGDl@steina-w>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5819581.iIbC2pHGDl@steina-w>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/06/2022 04:21, Alexander Stein wrote:
>> What's this node about? There is no compatible.
> 
> As mentioned in the cover letter, some nodes are not used yet. In this case 
> the intention is to apply an overlay for enabling the display later on. As the 
> MBa8MPxL is a starter kit mainboard there is no fixed display attached. So a 
> user might use our supported display or chose his own. But the backlight and 
> display are fixed, so anything related to that can be part of the general 
> mainboad DTS.
> The display specific overlay will then have (among other things) the following 
> snippet:
> 

Sure. Could you add such explanation to the comment in DTS next to this
unusual node? This would answer people's question if they wonder about
the display node.

>> &display0 {
>> 	compatible = "tianma,tm070jvhg33";
>> 	status = "okay";
>> };
> 
> Power supply and enable GPIO are fixed, so there the can be part of the 
> mainboard DTS while the actual compatible for the display might change.
> 
> I hope this makes this approach a bit more clear and this approach is 
> acceptable.


Best regards,
Krzysztof
