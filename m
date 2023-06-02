Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D60B7202EE
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 15:17:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235512AbjFBNQ6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 09:16:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235822AbjFBNQ5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 09:16:57 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64F29E47
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 06:16:41 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9745d99cfccso141105366b.1
        for <devicetree@vger.kernel.org>; Fri, 02 Jun 2023 06:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685711800; x=1688303800;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=j28C2wetcVicrmK7EXz1lTX3AP4fQveEZhUDx7hxIXY=;
        b=CLFcijfoQeto2cd4h28Cjcs0ioTA0TMc3PEP2LL/92pIrJVh8u8voO7SF4t0o/skIG
         ZgDWoPXsu2nMbi9J1i7zC9K1tgEZnY8EVwVfuyWrlVnJxtQll2DxVZW6TLnkb4JJ7yI2
         qm5zPTtyn5nLxYwQcYRERXb3u9AdbolZzB6yDErHYEmfPfvYLKEcuy1ln9f5Xy1zXSOE
         mn6jxCMIGLe0ghaO8YriZaA1EPrx65agQN/6ouGPBzdbDSjlZd+aMwPo6bPAOSPz1NsJ
         wfHsEiSKkPhmEzQWHcePl0437S+NCAdtbVdCbP3Ckm/EwL8SiNxvLVQMlR/9W8DRnn1v
         m+Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685711800; x=1688303800;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j28C2wetcVicrmK7EXz1lTX3AP4fQveEZhUDx7hxIXY=;
        b=BYnuwWU5rVNbZnTetyoKoQT0ssoU7PMCpXopw4MF+nT2pOYmCNs5ZqBClo0bSXTy0v
         FMI71OymLRO74JlKuIx8qqawcB7PolHKg6jrkOmh6mwxTmufia5j8I2cZejR/L8BN7d2
         N4qZL+Ny/ed/OOXS8vMvx4p4Bu7R/Jhz62eY1OmzdUXbzVctpGXkFb8t7kZuiMeqE/da
         5dye+By+jatXAMtAChH8PS9b+kMx50b+UB2Nk9sIIndiMW+Sv8+PDpEli2TmFTpYNRJh
         e2fnWp9KhXJq1c6UJVkhOpd+EhG1Epm0EqQFx+im6TVXD7DSZR+zlnZvNCjTS/Jru5lI
         VSyA==
X-Gm-Message-State: AC+VfDx4cB1asrQtvAyZcdU1U1+m19ZcT7yj57k2EdgUWFg2Voll5RBu
        6eaX1ue9FEEHaUDRg/DZHlG4ww==
X-Google-Smtp-Source: ACHHUZ7Z1vpCwYjr/jHZTFqspUKofOsqfrZbxehSYdMVxJWcvgUeMS+/9IUSt/sbr0GS6Zqi8Ic7aQ==
X-Received: by 2002:a17:907:6297:b0:96f:88a3:3a0e with SMTP id nd23-20020a170907629700b0096f88a33a0emr11386283ejc.0.1685711799784;
        Fri, 02 Jun 2023 06:16:39 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id mb10-20020a170906eb0a00b009658475919csm741823ejb.188.2023.06.02.06.16.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jun 2023 06:16:39 -0700 (PDT)
Message-ID: <34a95a76-97f9-517f-e09b-a74a06d8da34@linaro.org>
Date:   Fri, 2 Jun 2023 15:16:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: usb: xilinx: Replace Manish by Piyush
To:     Michal Simek <michal.simek@amd.com>, linux-kernel@vger.kernel.org,
        monstr@monstr.eu, michal.simek@xilinx.com, git@xilinx.com,
        piyush.mehta@amd.com
Cc:     Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org
References: <504444f5c2f4e725ac39cba1d72032d5a00c7cda.1684828805.git.michal.simek@amd.com>
Content-Language: en-US
In-Reply-To: <504444f5c2f4e725ac39cba1d72032d5a00c7cda.1684828805.git.michal.simek@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Resending as my previous email probably got lost. If you got it twice,
apologies.

On 23/05/2023 10:00, Michal Simek wrote:
> Manish no longer works for AMD/Xilinx and there is also no activity from
> him. That's why proposing Piyush as the best candidate instead.
> 
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

