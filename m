Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C417564F35
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 10:00:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229710AbiGDIAW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 04:00:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229785AbiGDIAV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 04:00:21 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE802AE43
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 01:00:20 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id c15so10144815ljr.0
        for <devicetree@vger.kernel.org>; Mon, 04 Jul 2022 01:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=x/j6BN531Ehqnp7T5j9HwFZB748oh2CYgiMSCueDCPA=;
        b=qZlUMZ59XUZHQJqttJxALvJxNbzwDbR//IEAC0uE5FvT1q/AumgJ8eq07gORkJYpOB
         VRG6kw2BEMUlYHZJV6OOQGPaTrepLSvhVM4VGCRYx5CMEWwjs1RLlqMSlLpFXJHSMnkR
         zFHjDd7x+WEueVyVdEE/tpFGCmxWe5syTpCaCQ7bO30cQzT4bWiD43avNZ0LORvO9M3d
         3gCrapkvTNUPiBck79ix29j/fKgyQXYB05hTPlMs2nR7Z6O9fwJI3QNMtM1Sj0Bguapg
         yB0vaEjsllLnpaIULV2bifWb5xbjMo4n2hE0XA6kDL7xqbC5uTMjO9SZAifFH/Q+YfCp
         A2DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=x/j6BN531Ehqnp7T5j9HwFZB748oh2CYgiMSCueDCPA=;
        b=GPWWlRqn8JXAxCJLQujolECpDe37K0Bn6XJV81T58NMlAzH5iLZqk3V9LvX0cJ7YYo
         pfWgpB5uiMBAlu+rIkFz1KGeIlN9+OuLPflF2NPq4kTQ0I6GWkkidtsbx7Ct1dOtoOgb
         Tbtej73fFQffj3e3ZcffwcMsqptaP2fd4EzJwRYZK8e3iJ5Ed+tT60rmcE4FlUiM1mJT
         mwVOhbrZO4MlsQwbahying21ntyYyWFb9gDpY3EOlixjTZgVEZim8+mn98CpSkUpMAdI
         N7wGXnoazkDlXZ+l+9+GPqGfutWpe6cUPf9BX72abyUo3ltMX+Toa3eJ44+ua5dRD4ZC
         N06Q==
X-Gm-Message-State: AJIora8b4Z83kVBqujAET+VxdleS3PvbR7bQGq/P3+1xY0gRz30Yo628
        kJPA75IGu9UwU/yDKu7to3rH2g==
X-Google-Smtp-Source: AGRyM1sx0Rgz3Wa9aeKXVR+yd7OHBv+SJI8bTOjtH9QNQBY6dWUXN4UJcqnJjD5pXg9qOqhz7O16lw==
X-Received: by 2002:a2e:a482:0:b0:25b:b7f5:5f88 with SMTP id h2-20020a2ea482000000b0025bb7f55f88mr16260280lji.193.1656921619152;
        Mon, 04 Jul 2022 01:00:19 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id z3-20020a19f703000000b0047e789b9700sm5025783lfe.118.2022.07.04.01.00.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jul 2022 01:00:18 -0700 (PDT)
Message-ID: <eb8cede8-6493-c116-29eb-0303c1871239@linaro.org>
Date:   Mon, 4 Jul 2022 10:00:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] dt-bindings: soc: imx8mp-media-blk-ctrl: Add LDB into DT
 example
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, Rob Herring <robh@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org
References: <20220630173922.92296-1-marex@denx.de>
 <f0366170-c1b6-9573-3e9c-9b1ace2dfbad@linaro.org>
 <b6badccf-8910-da26-bbcc-1302d957a2bd@denx.de>
 <27495fa3-b4ae-7502-45f8-5eb4c5e36640@linaro.org>
 <247d48ae-d22f-4adc-07c0-74dbccfc9390@denx.de>
 <20220701000959.GA3588170-robh@kernel.org>
 <cbb47a74-72ae-5db3-ca11-6c01a092fa98@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <cbb47a74-72ae-5db3-ca11-6c01a092fa98@denx.de>
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

On 01/07/2022 10:06, Marek Vasut wrote:
> In the local patch I have to imx8mp.dtsi , the simple-mfd had to be 
> added for the ldb bridge child node to bind.
> 
>> 'simple-mfd' is saying the child has 0 dependence on the parent. IMO,
>> 'syscon' contradicts that, but that's an all to common pattern. You are
>> saying all the clocks (or any other resources) in the parent can be off
>> and the LDB bridge is still functional.
> 
> The bridge itself should work even if the block control is clocked off. 
> The block controller apb (register) clock have to be enabled only when 
> accessing these two LDB registers, which should be handled by runtime 
> PM. Or what am I missing here ?

If I understand correctly, you need the device's APB clocks to be
enabled to use the child device? You have a dependency between child and
parent, so it is not a simple-mfd.

Best regards,
Krzysztof
