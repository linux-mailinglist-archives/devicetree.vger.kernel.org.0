Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B5D3427C5B
	for <lists+devicetree@lfdr.de>; Sat,  9 Oct 2021 19:21:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232949AbhJIRW5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Oct 2021 13:22:57 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:34724
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232696AbhJIRWy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Oct 2021 13:22:54 -0400
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 064F440013
        for <devicetree@vger.kernel.org>; Sat,  9 Oct 2021 17:20:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633800057;
        bh=kL5onibrdbpTWmZcYTtwUGQkos1VrIQlfQOfi9rMBeo=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=kpMALrxnvBacGqmy09hNY6LvWsr+U2brvjlIE2x3wuMtFcGLG17RAAXNTh9XT4Rim
         GqIB3aleic1N5v/kyar/SoZIXFSayetiG63mJ5g8P81f/aExE7Ahkzf04YTD9qoFhn
         irVU05vH+//2Ye75mjLFjjdN/JHOrdjX3TEp0xuZclbySKKqia8/5WKvs+rGZMWMIS
         ISgs1Xh30+3iEXuv+82VgHHvyHOIP47NvwW9rGRJCvyBM4fj6EvJvRRyIupGLzGk+W
         Nt9Gbtzeoo2saiKAeOR5/49Y+OZ1pqVQ0pANTvbQN7f+POdpc6Omn0VPGrJziHoz46
         tQ5/7HPmrwuOw==
Received: by mail-ed1-f69.google.com with SMTP id z23-20020aa7cf97000000b003db7be405e1so1033577edx.13
        for <devicetree@vger.kernel.org>; Sat, 09 Oct 2021 10:20:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kL5onibrdbpTWmZcYTtwUGQkos1VrIQlfQOfi9rMBeo=;
        b=xdT3T4TsVpgmMxN8UGkioPwb2WgzPRuyTJ1gtIrrLOudi9xbFWrAzaInRbsqQu+muQ
         Vt2V5ZxDF4wprE8lR+YExRhImf9RNsQ/CZOBRCwPRvNKXNJ4M3Ax8NjRKHM/MqdLQNYa
         w9feWlwGssU5vTVCfw6R8o+tMJhM9nq72DdWpn1snS4DnRghBLq9rS2hCXwhxE8c10c6
         5WIpgviJUQs3tMNvc27If1LCY3XreCYQTwvDMnHptTfxCYl6QE5Z/PsFBlDGWrTOoqn6
         PSMXwkdBdQMzCKLvPA5ycY+gToTXX/vkLLsJw6Jv38tpXnQSizSFMZaPBi0qlqFIP1JA
         R3cA==
X-Gm-Message-State: AOAM532yZaxnjs1CijPbYPg3FyoAGRvnkELQ/OCUqfuahoGqhg3VI/+e
        7szrVGDo9b6uN/XoDnzuTy85daVqTLJgmNHqDqw4Jf/6gvhk7t0HJCtfHYpVAPi8syNkLAuz3Ti
        b+duV6F9MdxlKto8T8f+LXVEiNjPv6vm4xR3yLcQ=
X-Received: by 2002:a05:6402:270b:: with SMTP id y11mr18888064edd.387.1633800056456;
        Sat, 09 Oct 2021 10:20:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzpQpfv74csrtSy6KUNxlPMuDmjg00caC1cHGJ+WK/WStFDQ1Er51zX/DIqVocH4mB+/nMy6w==
X-Received: by 2002:a05:6402:270b:: with SMTP id y11mr18888050edd.387.1633800056330;
        Sat, 09 Oct 2021 10:20:56 -0700 (PDT)
Received: from [192.168.0.20] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u23sm1238626edq.36.2021.10.09.10.20.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Oct 2021 10:20:55 -0700 (PDT)
Subject: Re: [PATCH v3] dt-bindings: net: nfc: nxp,pn544: Convert txt bindings
 to yaml
To:     David Heidelberg <david@ixit.cz>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~okias/devicetree@lists.sr.ht
References: <20211009161941.41634-1-david@ixit.cz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <192edb2d-837d-12ac-bb95-e38c8fd20381@canonical.com>
Date:   Sat, 9 Oct 2021 19:20:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211009161941.41634-1-david@ixit.cz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/10/2021 18:19, David Heidelberg wrote:
> Convert bindings for NXP PN544 NFC driver to YAML syntax.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
> v2
>  - Krzysztof is a maintainer
>  - pintctrl dropped
>  - 4 space indent for example
>  - nfc node name
> v3
>  - remove whole pinctrl
>  .../bindings/net/nfc/nxp,pn544.yaml           | 61 +++++++++++++++++++
>  .../devicetree/bindings/net/nfc/pn544.txt     | 33 ----------
>  2 files changed, 61 insertions(+), 33 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/nfc/nxp,pn544.yaml
>  delete mode 100644 Documentation/devicetree/bindings/net/nfc/pn544.txt
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
