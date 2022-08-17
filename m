Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7299B596A5F
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 09:32:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229448AbiHQHbg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 03:31:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231302AbiHQHbf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 03:31:35 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DA176D541
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 00:31:34 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id by6so12734844ljb.11
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 00:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=n866UwlVQsvEsNFKCS8hnoSDwI11hrtsqigMztK4PUg=;
        b=P5fgpWe4cPrzCJusVO6q5+NjmimvA7suGtowiRgC7IkHvYFbrYfNOz3kmbiEgRSIqR
         QgY/zeWNw9ClHhckGsh20186cIiVx0tu5qb1/MQKpmVn57BDLMUKxzSjurdDIOXNPfF9
         5IO/YzPq2vbW9I7rCdS2atffVlubqHXp64UdJpyhhSFFXOATF0er+Xr7Qyu50X3yQqmG
         yKAlqqUxb/132vkBY8sqygKsbExmhkXiFF5f3184FqLM5PUWKIXQPVQcLAROrWxq49wn
         yJBB7rR/yDMrzxwD2y/RBRwuSHD/sLgC2DANofXZdrgQLTWA7aEVVNvKwWhspgrk7z4B
         TCUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=n866UwlVQsvEsNFKCS8hnoSDwI11hrtsqigMztK4PUg=;
        b=fCsvtvn3gEmJEMw93gINBPm60zW6wQy1s2V4fPNw76k8bx7tV8VP0+gFj5n5of/fWZ
         7cE66PioCRLt3vIYdRaWDU21Pqa5CeuHB3Avoc4aJdYkkvkasrmGfiVmq6Dkpr7s6AAW
         MSW0BAiNdkeHle+NWDtk7NV5+Js6pq0ct4Vr0qn1g/zESuYO7T/rjELBVmEfv8cc+Wqr
         ScIDqvh4qUit/yE5YPBob+WTTLoNAV0A1+JU1wN5zO24DYByPtkHNb5q7Mi3wEBEm/ZK
         eF3dcn1WnY6jMKgojRFHRpS8bGrl3hJ1ZwCCjxINjD7ntCFOy663ST9YDI0oz09HT6Cj
         wkdA==
X-Gm-Message-State: ACgBeo3knNviNZZbNjMTwf5afmNSRT6mpCVpoLdXtKI1cXzcFa6sZVWj
        Xpaim0cYyYdewBHS+u3NpqC0jw==
X-Google-Smtp-Source: AA6agR4ZRa7kPXpKMgSEeReObwfLq016wKe9tLYdc9p31rQ9SyozcH3P6Vxjtg66mc6ooTXwgNS2Ow==
X-Received: by 2002:a2e:944a:0:b0:24f:10bd:b7e8 with SMTP id o10-20020a2e944a000000b0024f10bdb7e8mr8241865ljh.238.1660721492560;
        Wed, 17 Aug 2022 00:31:32 -0700 (PDT)
Received: from krzk-bin.. (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id j24-20020ac253b8000000b0048b2f079cf7sm1591957lfh.239.2022.08.17.00.31.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 00:31:31 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-samsung-soc@vger.kernel.org, airlied@linux.ie,
        daniel.lezcano@linaro.org, hdegoede@redhat.com,
        krzysztof.kozlowski+dt@linaro.org, daniel@ffwll.ch,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        lee@kernel.org, robh+dt@kernel.org, cw00.choi@samsung.com,
        linux-fbdev@vger.kernel.org, krzysztof.kozlowski@linaro.org,
        broonie@kernel.org, linux-kernel@vger.kernel.org
Cc:     bzolnier@gmail.com
Subject: Re: (subset) [PATCH 1/3] MAINTAINERS: Drop Bartlomiej Zolnierkiewicz
Date:   Wed, 17 Aug 2022 10:31:28 +0300
Message-Id: <166072148468.30126.5293143761869366053.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220808101526.46556-1-krzysztof.kozlowski@linaro.org>
References: <20220808101526.46556-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 8 Aug 2022 13:15:24 +0300, Krzysztof Kozlowski wrote:
> Bartlomiej's Samsung email address is not working since around last
> year and there was no follow up patch take over of the drivers, so drop
> the email from maintainers.
> 
> 

Applied, thanks!

[1/3] MAINTAINERS: Drop Bartlomiej Zolnierkiewicz
      https://git.kernel.org/krzk/linux/c/20b02590a3f76ee4895a917da28897736b20eda9

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
