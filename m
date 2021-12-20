Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 20E7847AB15
	for <lists+devicetree@lfdr.de>; Mon, 20 Dec 2021 15:12:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233240AbhLTOM4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 09:12:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230064AbhLTOMz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Dec 2021 09:12:55 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D25CC061574
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 06:12:55 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id p27-20020a05600c1d9b00b0033bf8532855so6731775wms.3
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 06:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QlYzhPhMQ4hQtemG1ynrhEbJfjA9AMn3v4ciZQNNcKE=;
        b=kAC76a2WO+3wLo07gq12RFtP7xkaC+5P2Fd4fWplQ+6Xj/IJ88tCnxxrSLQ1mY8rV2
         JyZwOIyCXbLg16RKQshbey/1EpTE/OY3iwM/M8bqHgqg3msXV0Gu63hG7A+JpJfkA82o
         1aX08urLkN+BNwrwsopadFyel33UhEsC7k4OMJiuufC9W/IyB/203p9Y+VR4S2J6zhDW
         mpoODx7Oa6WvfmNzPSPsLVbZIEVM0yRq6IJQlkr3kxODmqtlg4w4AdiVMDc9hK1OIpK5
         j7oN1O/0S6GRPj9KevKdpHkcrIZAvoLaPpCAGo51BASOtWNa38lS0yIjACvGcpq8B7N1
         tfTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QlYzhPhMQ4hQtemG1ynrhEbJfjA9AMn3v4ciZQNNcKE=;
        b=Yamr3MkOYARM3q5vqszTUF7irgrjdZzs7cDsCu+yYewZ4hookHvCZ1cMonU66qlLPQ
         F+SsFjb92v2fi6zmcAUeEGszNtBKrv4x+bNEHvXNaE4W2gOXxNGQckZxaJ/eGQANZOD1
         J2Z5lGn7zuRT4vYW45FFfb3jiX/5YYqwxKrhInbHLjvu8V9TmROSeY8Z4LIYuBdysdyI
         LuDHgWN8R/pC6yppLTfVkdLxm0FnaybuLMgXLkVyMeGckT2RLeSaiNWGNkKXbwqxNJbK
         x1bjebkeGtc+7IT7h/hJ6ftMqBsV+mlmkiAlIdQ9KGQVcK10Waz2/JRkoKPSKMCqdkap
         NpEA==
X-Gm-Message-State: AOAM533dwJerlii5Vy5sZQkqKezOOd7GM1+F35jKvNV+YYTmWvntaEYB
        edYglx6M6cbzGaj/8pQYCQn1PpQKRYVWLw==
X-Google-Smtp-Source: ABdhPJx0luPTqovvVoD6OCplkS0+/mwJcyESDQ/zfujdOEz4FbHPDtvrbG3OkQCc9m1YPb1Zbt+3lA==
X-Received: by 2002:a1c:2606:: with SMTP id m6mr8292704wmm.52.1640009573279;
        Mon, 20 Dec 2021 06:12:53 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:c44d:78da:eab0:6442? ([2001:861:44c0:66c0:c44d:78da:eab0:6442])
        by smtp.gmail.com with ESMTPSA id r8sm12246736wru.107.2021.12.20.06.12.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Dec 2021 06:12:52 -0800 (PST)
Subject: Re: [PATCH v2 1/1] dt-bindings: display: meson-vpu: Add missing
 amlogic,canvas property
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Alexander Stein <alexander.stein@mailbox.org>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
References: <20211219094155.177206-1-alexander.stein@mailbox.org>
 <CAFBinCBNqbu-jftGbt9Ss8KPkv+p48295MX5QBsJbc=yneqa8w@mail.gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Message-ID: <322022d4-4461-75c3-3f66-c68b20e32519@baylibre.com>
Date:   Mon, 20 Dec 2021 15:12:51 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:78.0)
 Gecko/20100101 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAFBinCBNqbu-jftGbt9Ss8KPkv+p48295MX5QBsJbc=yneqa8w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: fr
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

+ dri-devel@lists.freedesktop.org

Thanks for fixing this.

Le 19/12/2021 à 16:30, Martin Blumenstingl a écrit :
> On Sun, Dec 19, 2021 at 10:42 AM Alexander Stein
> <alexander.stein@mailbox.org> wrote:
>>
>> This property was already mentioned in the old textual bindings
>> amlogic,meson-vpu.txt, but got dropped during conversion.
>> Adding it back similar to amlogic,gx-vdec.yaml.
>>
>> Fixes: 6b9ebf1e0e67 ("dt-bindings: display: amlogic, meson-vpu: convert to yaml")
>> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> 
> Thank you very much for this contribution!
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

I'll apply it to drm-misc-next next year or if another drm-misc maintainer can in the meantime, I'm ok with it.

Neil
