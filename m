Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1474974DA98
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 17:55:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233286AbjGJPzf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 11:55:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233750AbjGJPzS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 11:55:18 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23C2010D4
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 08:55:05 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3fbfcc6daa9so36760955e9.3
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 08:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1689004503; x=1691596503;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=15HUrMFa8dxK9KzsEl+ouTmZ6kntZ48dbRmvixbyrEU=;
        b=wseh35Z1Q6EHHEe07eefYQBGAh1eZEVS8sPkPIE9J9sqGi57aDJ1TL6/NWCNMPP9gP
         kTXmYoo2sF8rbGDYrrrAlU7V3Icqsm6Lpoihl0uUQyLojhpV4fCrEY+LXiVi5L+eB1Se
         9DPsdow6ivYFjDsAxn9f+T23kxvNQ4rz5AKhjtMVL/+iNcPCMzAB/8Vyz7KxubWpJzSt
         gteSeu2EPM32aFYASPHunpwsNPOAt/08Ljb3PavtDwr/CcJnqxgaEgvszUG/5sB9fpsl
         cbMurE+y6MrKQoZ6Ge4K8TsSfmePoXM3TuuCgnkLx5zrm/CT8aMPSRzpursHQoR3bbGs
         V+kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689004503; x=1691596503;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=15HUrMFa8dxK9KzsEl+ouTmZ6kntZ48dbRmvixbyrEU=;
        b=W3xmqLdFZ9e1iOLLd3ckPA0ImP1IsuMivf9cA7qtsSPW5gdLBaCE4ukmwOQMW8a3xz
         hQuwHwKj9hDBOqOICTc9OiK3DDCgYtn5lSE2iV+/MCsbHC+3OsYh6y88pyZP3xvnQwTd
         S+krJLZQVyns68Be8Zbrh42Arh+MPyfrqSxvba2qOPyhWqmFcLPLJ3HQb1XvV3dKFklx
         S8U+WGOO1EnnUNAWrMEUXNKsJU1HWe4iqz7jNHBuOfvhCHx9zYXQ+aVZ9425eux0cbEi
         u4/eE7DvkEGzZVXXIEKbtIUWugl/t7jJFKAB6Ta1u7JoEug/upLRpNjIehcjRxA9JYLQ
         LQSw==
X-Gm-Message-State: ABy/qLbThjs+0bC/pCU6U0OznCY4RiwN8Rk61b0+5yZRyC3NZeE04hpy
        lUk6b2feUwhr7nWYC7rpC0YILg==
X-Google-Smtp-Source: APBJJlGvD9YcC5ks5NN2WUHCCnE3qkj0yYJdyQ6e0vVfi8aEtkEJCZSnAjeYyXeimrIx/UhfTkXLdg==
X-Received: by 2002:a05:600c:2247:b0:3fc:8a:7c08 with SMTP id a7-20020a05600c224700b003fc008a7c08mr10089897wmm.35.1689004502979;
        Mon, 10 Jul 2023 08:55:02 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id w16-20020a5d6810000000b00315a1c160casm893090wru.99.2023.07.10.08.55.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Jul 2023 08:55:02 -0700 (PDT)
Message-ID: <2248d0e0-7e8d-e8cb-8e69-918da75b952d@baylibre.com>
Date:   Mon, 10 Jul 2023 17:55:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v6 8/8] soc: mediatek: pm-domains: Add support for MT8365
Content-Language: en-US
To:     Markus Schneider-Pargmann <msp@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Tinghan Shen <tinghan.shen@mediatek.com>,
        Fabien Parent <parent.f@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Fabien Parent <fparent@baylibre.com>
References: <20230627131040.3418538-1-msp@baylibre.com>
 <20230627131040.3418538-9-msp@baylibre.com>
From:   Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20230627131040.3418538-9-msp@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
Tested-by: Alexandre Mergnat <amergnat@baylibre.com>


On 27/06/2023 15:10, Markus Schneider-Pargmann wrote:
> Add the needed board data to support MT8365 SoC.

-- 
Regards,
Alexandre
