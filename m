Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87763587751
	for <lists+devicetree@lfdr.de>; Tue,  2 Aug 2022 08:56:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233453AbiHBG4J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Aug 2022 02:56:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231932AbiHBG4I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Aug 2022 02:56:08 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50579193D6
        for <devicetree@vger.kernel.org>; Mon,  1 Aug 2022 23:56:07 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id u1so10374171lfq.4
        for <devicetree@vger.kernel.org>; Mon, 01 Aug 2022 23:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=duMOzSzPC0kNmGBuxGFT1vQPdxsyOe841Ff5xSydUPI=;
        b=TX//HXS7nXFnr5lv8r55Wi/gkS44/731u4IrRnhMkQDM1gX8IIZZcWxlN2OpbAmqMe
         WBC5UwyxZCPjU33eKAgp/e8W3pBqmWcnVIfZM7dgWRloyTExgDnbEh72eLEdFYFrOyD9
         XROwv22bkVXIXZylwIwhkDK6xa0THYLHX3rR+AensJ+7aOFN1cXDst3Gt2VqVfzRdiZB
         bN/4lcZhvtXM/Y+yE8n4sBqN7PlWnFbOcb6Cdzm/+j/J8LbkDeKYRa9sdwcWXo0uxBBO
         E4HTQxZGTuFkDd8hm8JSVstqxLgYfuxzC1wP43dit/DR0BJogUwGQGo3wsP0rNts4a5d
         FyKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=duMOzSzPC0kNmGBuxGFT1vQPdxsyOe841Ff5xSydUPI=;
        b=rjhwFwZZfCrtK2Il9qkgr8EohYFlAKfUrkWfCcD0o6ExiAPeH2ULJCbt8ThIvrwsPW
         25ar/vAWXlcJohZwpAGKv7Cp7Vi+zX3QobEsS1kTYyEjpAywMgc4ziZkM0UMN2B/SpTb
         iQRh5215twQgE4AJA3EmrlER2x12mJ5NpVbnRscFObmi9RgSzjJG1J9+e8A61P2TFY2k
         ZwquD4ZtNAZGeWf/mTIeMlLugzRCHyn8wlqyyoYOJuTibIZn7jhpMXGgtbQbnx4XmZOT
         o1Q4qzM5cUDKacapQk0Dt27sOETRArQW5IdGLt3o2coCh+lWBPCthuT5cgrwE8NR2OUL
         1kiw==
X-Gm-Message-State: AJIora+8sH4n0ggsUBUS19aTBkhZ27pUEh4/7tzWnBsLej8sJvs3hqmH
        khBRIpxu9iUHVFxnCqdRgLsp0Q==
X-Google-Smtp-Source: AGRyM1v7wLsOscR2SNIg7NarMsgFVtSgIEn3ktNg2PO0Vj6oBrb0XcI9QfYQbnJN2LR4pLTxWBkocg==
X-Received: by 2002:a05:6512:3503:b0:481:4470:4128 with SMTP id h3-20020a056512350300b0048144704128mr6698719lfs.303.1659423365664;
        Mon, 01 Aug 2022 23:56:05 -0700 (PDT)
Received: from [192.168.1.6] ([213.161.169.44])
        by smtp.gmail.com with ESMTPSA id d4-20020a196b04000000b0048aeff37812sm1094997lfa.308.2022.08.01.23.56.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Aug 2022 23:56:05 -0700 (PDT)
Message-ID: <1b4206ee-155f-80a2-f339-ab590ee2ce05@linaro.org>
Date:   Tue, 2 Aug 2022 08:56:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 2/6] dt-bindings: clock: exynosautov9: add fsys1 clock
 definitions
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Sam Protsenko <semen.protsenko@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <cover.1659054220.git.chanho61.park@samsung.com>
 <CGME20220729003612epcas2p280d8bd61f755ab6234b60030bc2cf7f9@epcas2p2.samsung.com>
 <debb6335cb2bcc935f7572bed25d76a85e80cfaa.1659054220.git.chanho61.park@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <debb6335cb2bcc935f7572bed25d76a85e80cfaa.1659054220.git.chanho61.park@samsung.com>
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

On 29/07/2022 02:30, Chanho Park wrote:
> Add fsys1(for usb and mmc) clock definitions.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
