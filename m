Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77B357246E1
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 16:53:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237582AbjFFOxf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 10:53:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238484AbjFFOxQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 10:53:16 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0148B10FB
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 07:52:59 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-51478f6106cso9426597a12.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jun 2023 07:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686063178; x=1688655178;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u5ad6JXLk8Vr2MVJ4NS6+T1cVzx+vCj7pnVSCbPfkOQ=;
        b=w+/EaiSGG1gFHNOiK9N2KDXlNnMC/7ygzTOAFYXzJoq6d6IuqJV01LInWdbFFzhsVd
         aPS751MS7FLPmqE+QA/UjYyw8zRO8qECpMzpIj+HJQHYJqtP9LuUFRKZXySIeNMqrb97
         OtcJW4B7h/WpsdWp/uYHiVlfSY9MnsNNojtByOoncanNksT06f1mKGDAU37eSpllzsay
         LBj810VVvlxAJ6yppAN6fWyYTbpD/tt2zL0HRerGNPYiPsRrLBfiksdTk3yo+tGEUvuy
         RtUZHnlIUXNq5zxnvwAt849PLAC1zdnij5T0Tgsr2QPdXyCE+tEN39Dtj8/aon6i8Rlg
         kRuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686063178; x=1688655178;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u5ad6JXLk8Vr2MVJ4NS6+T1cVzx+vCj7pnVSCbPfkOQ=;
        b=S+3KyO6hZY1rvLQ9KEgIEt7bR2f9Tal0HKn9JUBuyxh+PL6rkVsVTJPISjSpD5JLki
         j0TkLeUTMVY/dekx/jBfEFW8hZHlnfaKUcCDct0VntMS23B76dqwuLD126mLUCm31L1l
         mVs91SiAc8R1ibFN5Pit3e3hx6Nz60kPGXBeGznGNWFTle4zju9JoTqUq4SIzOQxs5Bv
         RrvIQv0wyVM2KuDRhE3o8rWQ9vVclSHk7s0/yQmsl/76icQGgD5hr1IsUnvpEP4c4F4w
         5XvwjimH8LwyKqUg80djuOie0J7FVb2PThCiAP15+k1wrdbzI9uIsHjuGznEwsx5s/gw
         u5EA==
X-Gm-Message-State: AC+VfDxHGBdfqY5YdpFziiRrgxTXddLIB2QTAMgOEWCXyCakY3b63+F6
        MC6xpvHSN8Tk1VvRH+v9HIcIvQ==
X-Google-Smtp-Source: ACHHUZ6H9SD5QM7GvGVtTOd3pnoU68t2Wz9JRqAqNViSKuX/OUaFmQEOy6IamN5jjA+DEumYdeotwg==
X-Received: by 2002:aa7:da43:0:b0:514:9d2f:10be with SMTP id w3-20020aa7da43000000b005149d2f10bemr2050200eds.18.1686063178502;
        Tue, 06 Jun 2023 07:52:58 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id n2-20020aa7c682000000b00514b3a2008esm5136125edq.2.2023.06.06.07.52.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jun 2023 07:52:57 -0700 (PDT)
Message-ID: <10fa8759-a1c5-6592-e0be-98574fb635c3@linaro.org>
Date:   Tue, 6 Jun 2023 16:52:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2 3/3] drm/panel-fannal-c3003: Add fannal c3004 DSI panel
Content-Language: en-US
To:     Paulo Pavacic <pavacic.p@gmail.com>
Cc:     neil.armstrong@linaro.org, sam@ravnborg.org, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230605153539.497602-1-pavacic.p@gmail.com>
 <20230605153539.497602-4-pavacic.p@gmail.com>
 <4bb22e77-b3f0-be07-5e8a-442c3aa3fd48@linaro.org>
 <CAO9szn05edU_HZHVnREMZcwm6TbBa4psABoqSqLWghFc=KbV7w@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAO9szn05edU_HZHVnREMZcwm6TbBa4psABoqSqLWghFc=KbV7w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/06/2023 09:36, Paulo Pavacic wrote:
>>> +
>>> +     if (IS_ERR(panel_data->reset)) {
>>> +             ret = PTR_ERR(panel_data->reset);
>>> +             dev_err(dev,
>>> +                     "error: probe: get reset GPIO: (%d) Check the fdt\n",
>>> +                     ret);
>>
>> return dev_err_probe
>>
>>> +             return ret;
>>> +     }
>>> +
>>> +     mipi_dsi_set_drvdata(dsi, panel_data);
>>> +
>>> +     dsi->format = MIPI_DSI_FMT_RGB888;
>>> +     dsi->mode_flags = MIPI_DSI_CLOCK_NON_CONTINUOUS |
>>> +                       MIPI_DSI_MODE_VSYNC_FLUSH | MIPI_DSI_MODE_VIDEO_HSE |
>>> +                       MIPI_DSI_MODE_NO_EOT_PACKET |
>>> +                       MIPI_DSI_MODE_VIDEO_SYNC_PULSE | MIPI_DSI_MODE_VIDEO;
>>> +     dsi->lanes = 2;
>>> +
>>> +     gpiod_set_value_cansleep(panel_data->reset, 1);
>>
>> So you leave the panel in reset state?
> yes

Then why do you initialize GPIO to bring it out of reset and them
immediately put into reset back? Just keep it in reset.

Best regards,
Krzysztof

