Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C35C441FA6D
	for <lists+devicetree@lfdr.de>; Sat,  2 Oct 2021 10:49:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232574AbhJBIvf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Oct 2021 04:51:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232549AbhJBIvf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Oct 2021 04:51:35 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A75E9C061570
        for <devicetree@vger.kernel.org>; Sat,  2 Oct 2021 01:49:49 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id a131-20020a1c7f89000000b0030d4c90fa87so3160518wmd.2
        for <devicetree@vger.kernel.org>; Sat, 02 Oct 2021 01:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yFRT4ycD1/iuPZQBIkdKH1q583n9EzNgCjIpEz/JY6M=;
        b=5rWTteAP1iZD9GjOAoPtb8knTiSO7drhYLP8c3VYsV9xx8n8L9DsVMi6e5ibAGdEXk
         bfWOmcURDBff+MqghPj+ILA4xKTbglDKF3Ir3/7Un5J1+0tRdWlyX4uxMGRlPA0cum4i
         uCjxhiMX+x0xyplfKPPkdLjaWkF+lv78PgcFKYIRQvFbGzUIKy90vku9SE/5fLdPfdZm
         LxrMUjhmPTdyn6cdHGMYwMoA8rcbVLlHgpHjAelwqYBa60bK1J6Xuy253V0jOMQWbjR3
         93lioeN3uu1YDWO/xXje/5XxC8WqOvEm6gRkpXslutyqHat9L0ul6iNB8LTyUvjB39Ol
         14hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yFRT4ycD1/iuPZQBIkdKH1q583n9EzNgCjIpEz/JY6M=;
        b=neRO4gYzIW3wEFPTe+FSH6JaqOyse628ErSF5jpaQ2GPHc/xFK7AFrytvdqx8Hy/gb
         JZVF4Sip7RRwkNzvXUAmr79v1e0Etn3aTObMhpckANnaZjs5+PiyGl4LbqDhHVwjUd6u
         hUJJkiAcz+Qe2O21btP5tnV5r/7Adznod0GS0a0armWsepco1BXtlgD/rH522p5I9BX6
         8xzStfFnDVhTQEWSa7uQRT5harix9rGn5imqp5y1yPUCut0J8RLrlf0UkrlpY48EkVfk
         JzGFap9bU9WKS2doNUsrfWLdiwPxkfOfhIdvJTobnU3S2q/Wr2CTGqqS1mGeSw8n56db
         YRZw==
X-Gm-Message-State: AOAM533ufBv2ZcvZq1hfrhDze0blM6lPK5iVw/Yj1eikXnwBNaNGr9RG
        KOxbH005+K5ayASgDag0aYbbew==
X-Google-Smtp-Source: ABdhPJzehP87CcUEup6emq0hl0cr1sSYsx4/3l3wLAysw8zDqAdyZYv8F7eix5Quc/y4XVncjs5xtQ==
X-Received: by 2002:a1c:98c6:: with SMTP id a189mr8735442wme.59.1633164588133;
        Sat, 02 Oct 2021 01:49:48 -0700 (PDT)
Received: from ?IPv6:2001:861:44c0:66c0:edf3:4c2e:bd36:3abe? ([2001:861:44c0:66c0:edf3:4c2e:bd36:3abe])
        by smtp.gmail.com with ESMTPSA id m4sm8926453wrx.81.2021.10.02.01.49.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Oct 2021 01:49:47 -0700 (PDT)
Subject: Re: [PATCH v3 1/1] arm64: dts: amlogic: Assign a fixed index to mmc
 devices
To:     Alexander Stein <alexander.stein@mailbox.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20210127230852.66686-1-alexander.stein@mailbox.org>
 <2921197.CJbAp5Dgou@natsu> <7him6135iw.fsf@baylibre.com>
 <3603832.OnnjH37t2F@natsu>
From:   Neil Armstrong <narmstrong@baylibre.com>
Message-ID: <e115009e-d93e-4e05-0ff0-c754fd867ae0@baylibre.com>
Date:   Sat, 2 Oct 2021 10:49:46 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:78.0)
 Gecko/20100101 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <3603832.OnnjH37t2F@natsu>
Content-Type: text/plain; charset=utf-8
Content-Language: fr
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alexander,

Le 02/10/2021 à 08:56, Alexander Stein a écrit :
> Hello Kevin,
> 
> Am Montag, 8. März 2021, 18:43:35 CEST schrieb Kevin Hilman:
>> [...]
>> Sorry for the delay.
>>
>> I somehow missed this v3 at the end of the v5.12 cycle, but I've queued
>> it up for v5.13 now so it should get broader testing in linux-next now.
> 
> Was this patch [1] missed again by mistake? I can't find it in linux-next or 
> anywhere else. [2] also shows that this commit is not referenced from any 
> branch.

Look at https://github.com/torvalds/linux/blame/53d5fc89d66a778577295020dc57bb3ccec84354/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi#L21

The commit https://github.com/torvalds/linux/commit/ab547c4fb39fe145b39e3013633258a5ff475d88 is upstream since v5.13-rc1

Neil

> 
> Best regards,
> Alexander
> 
> [1] https://patchwork.kernel.org/project/linux-amlogic/patch/
> 20210203192824.854491-1-alexander.stein@mailbox.org/
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git/commit/?
> id=7827db7f6141fda9af4b07864cab0c10398affff
> 
> 
