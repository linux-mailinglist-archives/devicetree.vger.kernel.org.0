Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DED1F6694D6
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 11:54:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241471AbjAMKyl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 05:54:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241167AbjAMKx1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 05:53:27 -0500
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DB3F77AF2
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 02:51:51 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id vm8so51393696ejc.2
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 02:51:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zy20KsCcUl9bSSkhyBei1oVtEZe09/gfEby+z93IJGI=;
        b=lOiaHtlhvTCSXTL+rpDZ47++FitVE4HYSEDbnbKOzc2sDA7pQ0zk3rULAM0D4UCk2f
         LM6WJ0lgTZTiWLbcGXceq5rDTTsKcPjCNGI1ySLUaZmO0k2Dzjy6MOIiWh/RPgVbTMl5
         9dgKsTz1gBy//X30jUoPJp1vsXBTILwy8ZF5UhEBIgbR1yukFrblIudyWvo0Lw+zDrfj
         wZEkeyoBtdGsG+GcqL1kfidLnYDAlbAHeCFN8IkL21OnXoULVKHmPzujfRMYPwvkATRE
         sqnesO2LQnjbAbSZmXtPtH1VumMIVoEe/kaJzr20mAMjRAmD/C5MBi3a5oDzerEngXku
         726g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zy20KsCcUl9bSSkhyBei1oVtEZe09/gfEby+z93IJGI=;
        b=qL4kAwO4W7cOhBEfaNVSQjxgYeDfkj+4jnuvzKjcqngorlAvG2JhOU7muNp02/y0Y2
         uGvpdSkgLc41zoiWsnWLVOOYOFYL0P065MPnJvr+1tE5+cZc2EIl2zdB30KNIRz0l2Xx
         Cg7zv0NjT3uW133vNvmEXs8SIZCMdGMD8NPNixlCslylB3IL2mBTvL4YzuGsxGrCz6G2
         nXJ78gn9auFbNWK3DDZItebbHXkAwHizWeHjbO4+BmP8b78dDOBAORRvQC5CKsk7CJOz
         PQmcDZm74kc/HubKiGYIARgzQGUIiPKZjZoIpWhY+UkgtuYm7Zu+tt+qeSRAyudgI9tP
         cQog==
X-Gm-Message-State: AFqh2kotWDoNoWgUtAjGHD9b/447YVXcNzdf9FXL5kUV10Zo304U1xEs
        E1qKT2e4yLMP7N9/Pp1wrnkjag==
X-Google-Smtp-Source: AMrXdXtnNcjB+a7YjRD0Uw5tzrqEBfV6aJOa6I+iPpzcQPtuTpXPz0acJjen+w0E6FPw3SQcI9QT8Q==
X-Received: by 2002:a17:907:c388:b0:849:e96f:51f4 with SMTP id tm8-20020a170907c38800b00849e96f51f4mr60976963ejc.23.1673607109955;
        Fri, 13 Jan 2023 02:51:49 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id u1-20020a1709061da100b0086b7ffb3b92sm146352ejh.205.2023.01.13.02.51.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 02:51:49 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Gregory Clement <gregory.clement@bootlin.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: dove: align LED node names with dtschema
Date:   Fri, 13 Jan 2023 11:51:39 +0100
Message-Id: <167360709873.32944.12518045742249154896.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221125144125.477032-1-krzysztof.kozlowski@linaro.org>
References: <20221125144125.477032-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 25 Nov 2022 15:41:25 +0100, Krzysztof Kozlowski wrote:
> The node names should be generic and DT schema expects certain pattern:
> 
>   dove-cubox.dtb: leds: 'power' does not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'
> 
> 

Applied, thanks!

[1/1] ARM: dts: dove: align LED node names with dtschema
      https://git.kernel.org/krzk/linux-dt/c/30a39ce8fb67d29d475f2bd8442039ac0d09a43c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
