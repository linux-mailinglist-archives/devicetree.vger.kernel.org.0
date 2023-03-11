Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C0F16B5A48
	for <lists+devicetree@lfdr.de>; Sat, 11 Mar 2023 11:05:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229668AbjCKKFv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Mar 2023 05:05:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbjCKKFt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Mar 2023 05:05:49 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7487DE7CA8
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 02:05:47 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id m25-20020a7bcb99000000b003e7842b75f2so4929275wmi.3
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 02:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678529146;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ciFroiEJcPCf1IcNM4Oy4MInn1VtQ6qbpV3yMFcCzXc=;
        b=bXoj40nIICUGmqpLuoYZkYyZ3eI1jvBtOnrUizE4q5FSvmvB5V6XKjaQIjIn/K4RAD
         YG/Yy9xDyLtzuREY+xUphpPJTOWG1eFoji9vDNCAniLttDeONIj9tIRDgWLZ1Cf40zpR
         b/RKl1dVBshh/xoXbru8cKano9n5bnp3QKU0PV53SFT1gsQ2twK2XvBLdIKj6LE6xvJM
         6A9h4v7nU2K+0MxrCf+MFDwjq5i8q1WjzlmsLzG4G8bXR4aMyl0mUagsw5m+hvfN1mIH
         /gSuilOgJ6Gifhmro4r8vIoSoQF0DiQKjO9e+GaFN8lgreefLqfQkjhwpYdbTamSAqK3
         cEhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678529146;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ciFroiEJcPCf1IcNM4Oy4MInn1VtQ6qbpV3yMFcCzXc=;
        b=YSpQMN/FV2w/d4cQQKFH6W8cFSH4pejajozZR+0o0H5IL5B3JeHFwT5QIojZPQIDEp
         JhkowInu8991IemzZZDR2i3Wm2ozPeqReirotAFTLzD4s6Zm6ARhIxqloh6Wfh/pvONp
         41bXsjqoFE6F60yM9Pb+EhBnOoDRcB8OqFjD3NxrUDJ02UQ6rO9P+ogUAc3k4p9ufyB/
         yRymiZmOJBFpBmT0ZKtIcuhGPf+SpPZNCnJrOmycmvEhAYB10Cq5Xc3Qezc7rqWG6AE9
         TPWvh46kMrb84n8lTAY5GnxqNaSU6zMV4WHtxEDPKr7jwcrlOPPGR9FCWjGBTF+4/voo
         4UQw==
X-Gm-Message-State: AO0yUKUJByxid9vax1K/7ghqc6RqCn1n0a7XHWhc3utwSPp3YIDiIbjH
        GEQMNc+P+ZAJkH1fw8sUXpJTXA==
X-Google-Smtp-Source: AK7set8zoDvWWEIFn13DW0itfJK1PANtvoXCqkiW5qigJfdhRgGaFsfi9mqjxqBQBIxpQJm1HRWahQ==
X-Received: by 2002:a05:600c:3491:b0:3eb:2e19:ff3a with SMTP id a17-20020a05600c349100b003eb2e19ff3amr5293547wmq.7.1678529145902;
        Sat, 11 Mar 2023 02:05:45 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:fc3e:aa04:e32d:cc69? ([2a01:e0a:982:cbb0:fc3e:aa04:e32d:cc69])
        by smtp.gmail.com with ESMTPSA id p23-20020a1c7417000000b003e11f280b8bsm2334725wmc.44.2023.03.11.02.05.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Mar 2023 02:05:45 -0800 (PST)
Message-ID: <7765365e-2bde-4ccc-3251-d4bb38c34ecb@linaro.org>
Date:   Sat, 11 Mar 2023 11:05:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.7.2
Subject: Re: [PATCH v4 2/2] drm/panel: Add driver for Novatek NT36523
To:     Linus Walleij <linus.walleij@linaro.org>,
        Jianhua Lu <lujianhua000@gmail.com>
Cc:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20230310132144.2241-1-lujianhua000@gmail.com>
 <20230310132144.2241-2-lujianhua000@gmail.com>
 <6539f132-c740-b9b6-8810-0affd6ab91ba@linaro.org> <ZAt4fTNEnyLteaas@Gentoo>
 <CACRpkdavjBPaNq1sRfi-FYiT7T3W19fU-mjha0pAtooUyf-8XQ@mail.gmail.com>
Content-Language: en-GB
From:   Neil Armstrong <neil.armstrong@linaro.org>
In-Reply-To: <CACRpkdavjBPaNq1sRfi-FYiT7T3W19fU-mjha0pAtooUyf-8XQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le 10/03/2023 à 23:50, Linus Walleij a écrit :
> On Fri, Mar 10, 2023 at 7:35 PM Jianhua Lu <lujianhua000@gmail.com> wrote:
>> On Fri, Mar 10, 2023 at 07:10:21PM +0100, Konrad Dybcio wrote:
>>>
>>>> +#define mipi_dsi_dual_dcs_write_seq(dsi0, dsi1, cmd, seq...)        \
>>>> +           do {                                                 \
>>>> +                   mipi_dsi_dcs_write_seq(dsi0, cmd, seq);      \
>>>> +                   mipi_dsi_dcs_write_seq(dsi1, cmd, seq);      \
>>>> +           } while (0)
>>> This should be in the same file as mipi_dsi_dcs_write_seq, imo
>> I have sent a patch to do it, upstream don't think this wrapper is a proper
>> approach to deal with dual dsi and wrap all of mipi_dsi_* function is
>> useless.
>> https://lore.kernel.org/lkml/20230310110542.6649-1-lujianhua000@gmail.com/
> 
> We can keep it locally if the fight isn't worthwhile, but I will try to enter
> the discussion.

It's ok to keep it in the driver until we find a way to move it in the generic includes.

Neil


> 
> Yours,
> Linus Walleij

