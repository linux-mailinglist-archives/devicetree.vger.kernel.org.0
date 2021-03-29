Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 282B434D786
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 20:44:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230506AbhC2Snh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 14:43:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbhC2Sna (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 14:43:30 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB650C061574
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 11:43:29 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id w10so5653455pgh.5
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 11:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=TB0bOFJQBYMpFj8jhjbjWQE9xdC6O+8oExa72cLoCMk=;
        b=QegOG/uEy/vuy61WLtzY4vr8/51mXTQD/fKI/RRns65cUhUtdH7+vBYgCVL+qjM2Tx
         bZSvthbM9tcP/aAf39De9Gcn4gODHmchLGFIwtLVEriD7yAQ5Y9CN5OGA9qosJOnCweR
         rctXYAIPi4sYNufJYNke7xrQK2DAhwC1XdKuZm5dKQL8aHuP10sCufXNzDSJEZAcWuKl
         ciAknUlGb/P0gkPn08DlP5ubbKuouFIXUYenOlZsS1bwP7Y3oE6mw6Tp2Gy/DuQrBaNt
         YIQMx61S3APUYKGggJBL4s1flY3MWL/wBQp7IzcROPfg8QCk0ukjxK7NNmZh67TzEcaL
         KghA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TB0bOFJQBYMpFj8jhjbjWQE9xdC6O+8oExa72cLoCMk=;
        b=iFCtS+W+qvxOFHM04JLt0BxALfPG2V+vqw6QwEedpCzRbewTpTIoEqi65MF6bhwDhp
         QruYUP6sx3Uc9oL73p1vxAYOHou9jv+90mJ2G3KBssfrSCyBVsULJPg1NbxOakfJF36F
         +/JQs+yi2L99WmCi9AJOsc2LQSgIymeMcB5TH0jJ3dR6JOoQ8LFcqng6sn+wFa4z6fxQ
         8nYUJL5dJj03lSdo1JeQRpB7eqPckfpBBWEl2tyrr69qVYKCGdeQE/E7cFc3S5spjLpy
         aEhbOeTk+IM1qnrb5DNHZ/Vp+QmrNMqGSflSyVrMMcChQQibder1c579aBpLcbqWOuGP
         SroA==
X-Gm-Message-State: AOAM531JggIHbMJHhc5vw+Vs2lBah+lJtdhZoWeESWtBO7CBFJVcblkT
        e7Vj7zX9uTtMHiV81HQGO9k=
X-Google-Smtp-Source: ABdhPJwFYQCo/LTcDljmxpGLpKkEirP61J3JSaJOEmV+l5KnA1kajHdZzY8eskWO+uiQ26Q+58m90w==
X-Received: by 2002:aa7:8745:0:b029:211:1103:d3e4 with SMTP id g5-20020aa787450000b02902111103d3e4mr27219975pfo.73.1617043409364;
        Mon, 29 Mar 2021 11:43:29 -0700 (PDT)
Received: from [10.67.49.104] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id h6sm18259246pfb.157.2021.03.29.11.43.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Mar 2021 11:43:28 -0700 (PDT)
Subject: Re: [PATCH next] ARM: dts: BCM5301X: Fix Linksys EA9500 partitions
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Vivek Unune <npcomplete13@gmail.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20210329055430.7516-1-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <a1600550-8793-ebd5-bd18-a466764922ac@gmail.com>
Date:   Mon, 29 Mar 2021 11:43:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210329055430.7516-1-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/28/21 10:54 PM, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Partitions are basically fixed indeed but firmware ones don't have
> hardcoded function ("firmware" vs "failsafe"). Actual function depends
> on bootloader configuration. Use a proper binding for that.
> 
> While at it fix numbers formatting to avoid:
> arch/arm/boot/dts/bcm47094-linksys-panamera.dt.yaml: partitions: 'partition@1F00000' does not match any of the regexes: '^partition@[0-9a-f]+$', 'pinctrl-[0-9]+'
>         From schema: Documentation/devicetree/bindings/mtd/partitions/linksys,ns-partitions.yaml
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Applied to devicetree/next, thanks!
-- 
Florian
