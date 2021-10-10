Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18F8F4281E4
	for <lists+devicetree@lfdr.de>; Sun, 10 Oct 2021 16:27:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231842AbhJJO3h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Oct 2021 10:29:37 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:45492
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232062AbhJJO3g (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 10 Oct 2021 10:29:36 -0400
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 6EE8A40013
        for <devicetree@vger.kernel.org>; Sun, 10 Oct 2021 14:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633876057;
        bh=xW+MKR8E4EzaY0k+syaHUY7byAQSWGtIq6VGpVZrt24=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=VPLZ0dZrchKy/cmjaavMybZLRyi40NCGV7J/vVPbHidrBKr+Wiiozx0MMlqnC55bd
         QHR+1iVGRBM8YDQSrIiQC1YpV4Zrfk4oHpuPGsC5QHWSkmczGUpNjFKnYIVuvq3WpJ
         cMrHxst4jfWeG+HAaCphcKbZYs2pIYg4lw4E7L54n6qzwIelavTHixRgFmdyCDdYUZ
         ZDNpTUKm0KVX2LD0qo62Ht504RPHzaB6wbxdEWgXeSesNkkt0QuwoxdyglPRjMemTx
         bRmLWO8Gdw2Ex57tZjLNd+jJIaMQSS4NBBHjopl2OT3rruIceqHI7h2JjojH6oGRfw
         p3dyzLvoFjVSw==
Received: by mail-ed1-f69.google.com with SMTP id t28-20020a508d5c000000b003dad7fc5caeso13443109edt.11
        for <devicetree@vger.kernel.org>; Sun, 10 Oct 2021 07:27:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xW+MKR8E4EzaY0k+syaHUY7byAQSWGtIq6VGpVZrt24=;
        b=GVV+t5ixeaeJxhqzKJi7oNroaiBBFFILgw2NSl7R5vd9PPqt60xcLBVPr2dcNCzEOg
         3AlG2Vfdy3paBtgAC4/iEdTkThMqAANjS7CEegkvw7NclVBhjr8tTL/2MMEsHN0qSXAw
         thXCqiQ1FwFr36nm9N/z/SSEcZqjvH+6zZzEIo+/mMRbbeLkSTA3s58Fp5ENblz/hz4A
         j3HHr+4l1dsPLl0pZnc8Y4TVZ2A/+E52/HxYEr2y+Mm0rQvirVtKRIis0hW051J7XqGY
         JpOTfSOggSuLyT+KgGbnEhKadfbC090vVkK2YnNApiA8zMak5NPpBxCqU2NvR9pgDQYA
         LkQA==
X-Gm-Message-State: AOAM5326LLvJKrLIqKLL7EfE5vq4TBNzgpoST21TCaNfHB+Pbyuq0ucM
        kCbjeqapJw/DhVgrLnI6dpYHwjZylN0c7us+R/4TcEZlZzyOQ/Az1U2fBnuJG1dCPZ9/zlmYmdn
        KemiN2yPNGfxopBJXKedK/TbpPMoCRY90RTe80aw=
X-Received: by 2002:a17:906:2b82:: with SMTP id m2mr17278480ejg.122.1633876057112;
        Sun, 10 Oct 2021 07:27:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyOb5sSykNnVt0L3Cfv4VoKMjjb/lVgRt7i3QyqKVJ2bc9CBmr9I9/nNU70u+GVpQvkkynwBg==
X-Received: by 2002:a17:906:2b82:: with SMTP id m2mr17278456ejg.122.1633876056898;
        Sun, 10 Oct 2021 07:27:36 -0700 (PDT)
Received: from [192.168.0.20] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v6sm2713007edc.52.2021.10.10.07.27.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Oct 2021 07:27:36 -0700 (PDT)
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
Message-ID: <5fab38bd-33fa-e0bc-5625-e972008f4c97@canonical.com>
Date:   Sun, 10 Oct 2021 16:27:35 +0200
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

Rob,

The netdev folks marked patch as not-applicable, so I guess they expect
you to pick it up.

Can you take it? Similarly to my NFC bindings conversion sent this weekend:
https://lore.kernel.org/linux-nfc/20211010142317.168259-1-krzysztof.kozlowski@canonical.com/T/#t


Best regards,
Krzysztof
