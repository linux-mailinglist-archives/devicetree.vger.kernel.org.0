Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2770B50C93C
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 12:31:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235028AbiDWKcB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Apr 2022 06:32:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234999AbiDWKbz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Apr 2022 06:31:55 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4D0E1C048B
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 03:28:58 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id l7so20818325ejn.2
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 03:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=2m9kAORld4iDB2KAPLh1iCsQe8VM2IonNBmHniXB+aI=;
        b=abL3ZQ0jUA/UmIqEWJnORrPPfRhiBNtkKHGmN2VHZBZ4eLUI57QXL2YeGyD/UWdmw4
         /PvZ6PoNwnmTYaJhZq7ClQMH2dHTn/quieJqvwegOB2EjRvWzvU8Sa4LJ629A3GG8pcE
         vnwTF8Qc4+JhGtJ1LhWoHlORilVZ5qrChcfnsAlm/ddCPaRJ7tr8PATd6D8MqrnyE9P/
         nYB0KB3NpBJXZWsCop8opcKElkfJxWNFgi2bvFFptKKE5qlpMhtor6zB6I1WiVUfgah7
         451fMAWKE/vZvmly83beGV8CKvg5zZznrCim5huFff5u/7y8JeqMtuEgHz3DgynT0doo
         XdIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2m9kAORld4iDB2KAPLh1iCsQe8VM2IonNBmHniXB+aI=;
        b=5TW3iBZhgg4aKEEWWR8YsqkH8a7UVfqxDH+u2colpF7XyHwy9+ax3z1hBIh2gatJYT
         FLl+3bOMHReRRRSGk9gHaYlMpyIl0ILNFvAL7YnRvN2rHY5zN//bmg5hweaPTHd2/8mR
         2VlUY+KZdi7n4OjcE7OnEOJ4Hcv0zO5STUPhp41MTsjnD0CnF+NcAnAsbzEYK+G10Tuz
         QLxadLoalti1SG8tMS+6hBs3AKWqyhMmuiD4tushAF3b7gKS5k6gMp9bWhBWo/Sih3Jv
         bvsG+/594Xc6hYCt5dNVdVyqepOOAd8b1pubFLmB5pdUwC1EuhqIyWeddbnI+LN7t3Fd
         4/wA==
X-Gm-Message-State: AOAM533faIxn2mRpG0tyS81xM+zFCMCOq0Tm2JqxzrdDz4ev/t1JGvSK
        UlyXgIbcEfoJ7pWqPFRgRnnLmA==
X-Google-Smtp-Source: ABdhPJzNLgOfjlkn71D3XLc+z6mdb8U6FtuDFVeolu/miVVPX/dSL5gctTkJCIyZlGTqP6JpYcLBqg==
X-Received: by 2002:a17:907:ea8:b0:6f3:72ef:2397 with SMTP id ho40-20020a1709070ea800b006f372ef2397mr2184159ejc.201.1650709737125;
        Sat, 23 Apr 2022 03:28:57 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id v10-20020a170906380a00b006a68610908asm1558632ejc.24.2022.04.23.03.28.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Apr 2022 03:28:56 -0700 (PDT)
Message-ID: <00448326-7bee-8cf4-5751-d967bc424aea@linaro.org>
Date:   Sat, 23 Apr 2022 12:28:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH V3 13/17] dt-bindings: arm: mediatek: Add #reset-cells
 property for MT8195-sys-clock
Content-Language: en-US
To:     Rex-BC Chen <rex-bc.chen@mediatek.com>, mturquette@baylibre.com,
        sboyd@kernel.org, matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     p.zabel@pengutronix.de, angelogioacchino.delregno@collabora.com,
        chun-jie.chen@mediatek.com, wenst@chromium.org,
        runyang.chen@mediatek.com, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220422060152.13534-1-rex-bc.chen@mediatek.com>
 <20220422060152.13534-14-rex-bc.chen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220422060152.13534-14-rex-bc.chen@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/04/2022 08:01, Rex-BC Chen wrote:
> We will use the infra_ao reset which is defined in mt8195-sys-clock.
> The maximum value of reset-cells is 2. Therefore, we add this patch to
> define it.

Same comments as your other reset patch.

Best regards,
Krzysztof
