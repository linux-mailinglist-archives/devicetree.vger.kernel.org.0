Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 022576832F5
	for <lists+devicetree@lfdr.de>; Tue, 31 Jan 2023 17:45:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231486AbjAaQpv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Jan 2023 11:45:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231482AbjAaQpt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Jan 2023 11:45:49 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE33356888
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 08:45:47 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id a3so8104540wrt.6
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 08:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N6MGQ9vFPf/PTOMa+Z1CFX94OOnbAZXq2mwlJ2U/izQ=;
        b=rIJC16gfTs8/WJLZD3b9Yq5SgiLR2O+VykjtBb3ukzqsjOwKzT3SONLqYych3cGLKA
         LXKil0VgdrQQQD0UWgBcQVgLQhO46RHdgrXCjbn9knu5mVaKNunVOWCtPF8notj/TlOK
         0+ON8SkYPM6Xb7m3t+svtW3uZFHOX04j8QXWax/bckKNZbDq5emW7YrDxUawNhyn8gDX
         bRT1L/N3nAlSHmC2eyM/qxsF3YyTOzvtW1kFuYZhQjFsH4/yStVGlzTLaDAFl6M8d3xp
         WCdfO+RF/J2dvs/ZMfF6PRTVmtSbC24FvhBAR/kdk/9MpDrylAIf7zZ5cK1z2DMFkS13
         I3dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N6MGQ9vFPf/PTOMa+Z1CFX94OOnbAZXq2mwlJ2U/izQ=;
        b=aCVEbUY9cgLmT/2OyiQnCodsMnBxuUppd+Spmem8oxhXkH30pfvmlSSLemCsQ4fIUg
         bcDz9bhbqxpyBOe55zw6FBOHRu+lpp5tZ5Dppv7CKvzws6LD63JlYUUVxezURl4pdZaJ
         7ngeJuqZlAJMyL74K8tYF5lV1hmQtTXTeF0eEoLh0+cD5OOAovEMRUCBpdab7/09g2vf
         ibk8gIqIi6qChrDbXZSTjKErKM/tvAgSVuU8XBKh4Cu2dGz+9hrfUctGyhFI1LlnFznG
         Tg0SwFCjEpsXZQ5HX/bHSo83RCqx2haTp10kO/ssZDZKYsx4gw5Y3J8v+UFPLSFeU9as
         Bc0g==
X-Gm-Message-State: AO0yUKXCHWcitaXBHZGxdScyDeYU+MBWciFtUXyCRhodvbHtr5QKfkqi
        IPobp+3L2N1u63kII8HoTKdTbw==
X-Google-Smtp-Source: AK7set8HwVxFxeGIJJe7A328sxFXBHw7JRelwm/IIZ1PB2qBlTX4xwpuKXk9gplOppvubNgZXuI6Gw==
X-Received: by 2002:a5d:6683:0:b0:2bf:e4d9:2c2b with SMTP id l3-20020a5d6683000000b002bfe4d92c2bmr10295846wru.48.1675183546246;
        Tue, 31 Jan 2023 08:45:46 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id l15-20020a5d6d8f000000b002bfb37497a8sm16087489wrs.31.2023.01.31.08.45.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Jan 2023 08:45:45 -0800 (PST)
Message-ID: <7a414b9c-4076-19d6-40cb-f80f51969902@linaro.org>
Date:   Tue, 31 Jan 2023 17:45:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 4/4] CP2112 Devicetree Support
Content-Language: en-US
To:     Daniel Kaehn <kaehndan@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        jikos@kernel.org, benjamin.tissoires@redhat.com,
        devicetree@vger.kernel.org, linux-input@vger.kernel.org,
        ethan.twardy@plexus.com
References: <20230128202622.12676-1-kaehndan@gmail.com>
 <20230128202622.12676-5-kaehndan@gmail.com>
 <b3712d74-2276-b7ba-4145-4d9a6d5f3a34@linaro.org>
 <CAP+ZCCe6J8y=qLMWafXPur1V_0=oQdw2QWqeAZ-C3TroMB4HhA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAP+ZCCe6J8y=qLMWafXPur1V_0=oQdw2QWqeAZ-C3TroMB4HhA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/01/2023 02:06, Daniel Kaehn wrote:
> On Sun, Jan 29, 2023 at 5:06 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 28/01/2023 21:26, Danny Kaehn wrote:
>>> +#if defined(CONFIG_OF_GPIO)
>>
>> Don't use #if, but IS_ENABLED(). I think it should work here.
> 
> I think I will still need to use an #if / some sort of preprocessor directive,
> since of_node is only a member of the gpio_chip struct if that is enabled
> (and thus causes a compile error if done outside of the preprocessor)...
> Unless I'm misinterpreting your comment?

If of_node in gpio_chip is indeed hidden by #ifdef, then the code is ok.

Best regards,
Krzysztof

