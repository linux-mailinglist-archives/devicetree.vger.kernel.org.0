Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7958150E8BB
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 20:51:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244628AbiDYSxk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 14:53:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244614AbiDYSxi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 14:53:38 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A58490CDA
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:50:33 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id k23so31435773ejd.3
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=I8OGAy692x2HlX0zDRT2WU4OQLJqBZjTeofFJMqhneQ=;
        b=yJtZUQbKaP4+1vaymO4wTdai+PwZjfZGL0Qv/GR27elZWHbpeL6kCjftSG2f0FChs/
         PL5SN243GPEnWSJ3LQTJXQZ146BTqccn2NGQL2nVfINMe4oWwerIYVRjDL6Qg1bnsdFs
         V15im6vwngYNzIohkZBUJ7Cd1jhBPdxlX4MGD+5qqiDnAutR2PAfLdSFIIFBzzT+PE3D
         Nip0LKHDnt2jITH47p6IeSNy7hXKUSimfnbs/tOfVlSqHn6ehA1AOaDUvcVX3eXNOxlj
         w/sYwfMmoWjBqtijJlFIEx2Fa0CnQOMzea986Z/A0BczlPCVCzTWkaO7nTUFLKJIP6NG
         Oijw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=I8OGAy692x2HlX0zDRT2WU4OQLJqBZjTeofFJMqhneQ=;
        b=faa7/OW8np1nCgLPKEdTnUGU5VqH41aJBkfMmJuxx8Xy8zyWnVSsJsTbIZX38aBGJe
         hJzsOd+TCarXgkAbvpy1ip2rFB4XnkSsPclpeIcpLb0JVRzdOzU9k0HEiNWgSKuMHCtF
         Zmz/JC850VBPGtMCDCPvkY4X9aJAsGuCdJNEDu6Ktlyc3EZR6VrY+hcuCusnD/S11OMt
         FsqYURQRLC0D4KSGYERPsWU67hf2jg209yPfs0Cb7UX+j93AWsvw2BtEaeE2kGOdMgmI
         idDM2GuxECAxUj1VIkndQMGt2VJ27sOZn7HExnTECuAZU0lBblh8jrHmTvuGjy+lgutb
         4vqg==
X-Gm-Message-State: AOAM533zLeKtWNNNZDArkLLnofVYIyWY5koJXr3RfmS4+JIA/QVeP8jZ
        aZ4cXL0o2+JKy/JPZf+I8f16yw==
X-Google-Smtp-Source: ABdhPJwRiWolCCzfTOXvZ/aMVmJ7USEy6FBXDNaZxg/9Y1L8Bsf/Q7l9Ym1+l8z14ohrkIth/+dThQ==
X-Received: by 2002:a17:907:72d5:b0:6ef:a49f:133a with SMTP id du21-20020a17090772d500b006efa49f133amr17969076ejc.420.1650912631700;
        Mon, 25 Apr 2022 11:50:31 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id p24-20020a056402045800b0041614c8f79asm4937824edw.88.2022.04.25.11.50.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 11:50:31 -0700 (PDT)
Message-ID: <4ab44d3b-8a10-e24d-7c60-f0073e6e89f5@linaro.org>
Date:   Mon, 25 Apr 2022 20:50:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 1/3] media: dt-bindings: media: rockchip-vdec: Add
 RK3328 compatible
Content-Language: en-US
To:     Christopher Obbard <chris.obbard@collabora.com>,
        Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Johan Jonker <jbx6244@gmail.com>,
        Elaine Zhang <zhangqing@rock-chips.com>
Cc:     linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20220425184510.1138446-1-chris.obbard@collabora.com>
 <20220425184510.1138446-2-chris.obbard@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220425184510.1138446-2-chris.obbard@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/04/2022 20:45, Christopher Obbard wrote:
> Document the RK3328 compatible for rockchip-vdec. The driver shares
> the same base functionality as the RK3399 hardware so make sure that
> the RK3399 compatible is also included in the device tree.
> 
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
