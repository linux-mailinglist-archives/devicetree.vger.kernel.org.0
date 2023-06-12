Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D490972BAFC
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 10:42:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233303AbjFLImI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 04:42:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233305AbjFLImF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 04:42:05 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBE4AE6
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 01:42:03 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5184abe9e86so127397a12.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 01:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686559322; x=1689151322;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NqLn9Z97H6qUCR5e4VRbV/fkvI7p6WynsZMjBmI9cNw=;
        b=N+35BL7PWpSboXRycO6wKpD7hz7h2rhvil78gLeY81mEACJCgjDQZqJ4TDbq6g3fLW
         6hjJSzlRTp41j9rPx7gh7KB3zgdKSH6KZ0oIW5QJlz6RmMfTnt9J8wAQB+fjsJ6NO5H3
         K7Ao8OfsMb3eehqnXF8GkWaLuw6J+Z6SqntOsxZWA99NwGJp2tlyE0m9Xvu8cmUsu6fx
         ZEHds7hQCSvy/piD/XiQBRjlKZUUegNkJyKQZEC1sZrdpfxd94zegAwP75eXb5halYp+
         kIk6SubT5xwN8EpKnzYOJHeErbEFpveS86wLdpPaKgeh6eBUEDW/TD4/8LSFaZvGymib
         1upw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686559322; x=1689151322;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NqLn9Z97H6qUCR5e4VRbV/fkvI7p6WynsZMjBmI9cNw=;
        b=NWiZHLO0m+iqzMpt//0ComFcpznH5M1vgX1PbNlUG1UTNUgHc4jOMH8HhIhKs3w0xS
         STjlYNyTLR1LZkM9mXvGsbot1LNETdngm6qx5VOk2VwD5jMVWjyO9aCQtQmsHdsLqZxV
         3n/137kAelHSiuR1UlPC3uGe6ZdJNXPLHRMWxrHroKkNsSKTCwuu9czN33P8B2VAot3J
         G7MGcNb2xA6Selg+3TAu9d9vj4UtPxaXgx7IP+3+s2xQS/JDyoNbsbC+evsJXEtWvpHy
         Ac3kpIrZe/sNTuq9tnuZRvthdZ4oZjnMhS7llaoYXoMmxF1Yo/zoVtZKNJHyYwTE9b2d
         HSVQ==
X-Gm-Message-State: AC+VfDyiJydkd7bsC2OhL3s3ech1i/H6nvyqSqg07XMMb2qTsLcTBLpI
        mQQT2eDuoXw7PaQFbCTGOadXJA==
X-Google-Smtp-Source: ACHHUZ4by/fBNXqrsLA2AMqwXNttwDsrsYEk8bmXT37szcY0HvEGsqbPAlWWEZOZa6tjTv0eqjfaOQ==
X-Received: by 2002:a17:907:3d8d:b0:973:344:6a39 with SMTP id he13-20020a1709073d8d00b0097303446a39mr9941744ejc.76.1686559322244;
        Mon, 12 Jun 2023 01:42:02 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id lr12-20020a170906fb8c00b00959b3c30f2csm4823007ejb.222.2023.06.12.01.42.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 01:42:01 -0700 (PDT)
Message-ID: <bd95ab0c-402b-0914-0d3f-5309a63d8eea@linaro.org>
Date:   Mon, 12 Jun 2023 10:42:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2] dt-bindings: net: wireless: ath10k: add
 ieee80211-freq-limit property
Content-Language: en-US
To:     Christian Lamparter <chunkeey@gmail.com>,
        devicetree@vger.kernel.org, linux-wireless@vger.kernel.org,
        ath10k@lists.infradead.org
Cc:     kvalo@kernel.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
References: <288fc9a0db6c292bc132e828611c41785b075078.1686486461.git.chunkeey@gmail.com>
 <c33c928b7c6c9bb4e7abe84eb8df9f440add275b.1686486464.git.chunkeey@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c33c928b7c6c9bb4e7abe84eb8df9f440add275b.1686486464.git.chunkeey@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/06/2023 14:37, Christian Lamparter wrote:
> This is an existing optional property that ieee80211.yaml/cfg80211
> provides. It's useful to further restrict supported frequencies
> for a specified device through device-tree.
> 
> For testing the addition, I added the ieee80211-freq-limit
> property with values from an OpenMesh A62 device. This is
> because the OpenMesh A62 has "special filters in front of
> the RX+TX paths to the 5GHz PHYs. These filtered channel
> can in theory still be used by the hardware but the signal
> strength is reduced so much that it makes no sense."
> 
> The driver supported this since ~2018 by
> commit 34d5629d2ca8 ("ath10k: limit available channels via DT ieee80211-freq-limit")
> 
> Link: https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=e3b8ae2b09e137ce2eae33551923daf302293a0c
> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

