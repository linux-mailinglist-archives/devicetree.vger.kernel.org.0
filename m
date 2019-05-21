Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4568224DD9
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 13:26:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727969AbfEUL0w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 07:26:52 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:33887 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726525AbfEUL0w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 07:26:52 -0400
Received: by mail-wr1-f68.google.com with SMTP id f8so11782836wrt.1
        for <devicetree@vger.kernel.org>; Tue, 21 May 2019 04:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=sGys3Iol5dLtdbxkyfPp6BlafjDFlyvcTnF3At5Y2mY=;
        b=xa+Fjufbb1lWW90PQCIg5/2U9zdLS45WWo284k/724/94OQArbEEdhI/a5ceLz5BqQ
         HDJxwMdbf9ZqeaCxJr4pSLAdMLyyGogqX9KXyrPMQcznwEaOzNvZ5HGhNMgRoCPUgCr3
         Di9zgN6DxWACkL3qM55JjMKXdPnxBjt0hHo3iFfupTGIC84YrZNvrorSSol8pCumbxfm
         Ix8Ry0dJi87fXjYcZWVfk397WxTeISlVtOirazL2iLflcXfQ4gMDA4TRw+EizoNnwIS2
         JdGGoDXwcpPOxIgiefi0BgUhoI+jQVf6XANV3wPxfj96YHNXPmGb5DfQIiwtQ2gHOxCP
         YxiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=sGys3Iol5dLtdbxkyfPp6BlafjDFlyvcTnF3At5Y2mY=;
        b=sDbytug8PUFTtMiBrOlX4fqHEyloSwrH6PLnmNx2FafJS22jldeFJUnC0AuEf7e3YY
         yc9I1oNf8FW6DC2/t2gTJHQLWwnTUPh7dI6Magsme+fCY7ngrDZhsZ++o+WS+yPKs27z
         bFnf2A23o2qzMVEkwfLmgkfgZtwvk7xGDEgC+ZzdH9CF4BwqrAQ5vpGwyBsezxgQOZzS
         hVb9IDp84bjnirF+EheDwTZ6jlpXVbZuzwATOtNKpEEnCkrCwTp2ZNg5CP8oCRNvLJRd
         4V/KdWGee5pj9rQKiTkOu16zsXqKfBjH66aLR0VBoHls7+ozq3tyyvBA6b50dhh9wE47
         M3Sw==
X-Gm-Message-State: APjAAAWaLOMgC5ciVEEVaRySO2bWpa2+t7CLVB+lGRBzOUoCRPxmgnnf
        G7l2DbZx6GHP7QTuAuSZOMCV/A==
X-Google-Smtp-Source: APXvYqy2jCv/tcKI8+hfC11XMcNd1yvILVIneSyvMJ+o/81tlqCa0r3Pmi7nB08kvuSCuvJysQ6YWA==
X-Received: by 2002:adf:f34e:: with SMTP id e14mr30178782wrp.215.1558438010594;
        Tue, 21 May 2019 04:26:50 -0700 (PDT)
Received: from [192.168.0.31] (abo-99-183-68.mtp.modulonet.fr. [85.68.183.99])
        by smtp.gmail.com with ESMTPSA id b10sm49421373wrh.59.2019.05.21.04.26.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 May 2019 04:26:50 -0700 (PDT)
Subject: Re: [PATCH v2 1/5] dt-bindings: soc: amlogic: canvas: document
 support for Meson8/8b/8m2
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        linux-amlogic@lists.infradead.org, khilman@baylibre.com,
        robh+dt@kernel.org, mark.rutland@arm.com,
        devicetree@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190520194353.24445-1-martin.blumenstingl@googlemail.com>
 <20190520194353.24445-2-martin.blumenstingl@googlemail.com>
From:   Maxime Jourdan <mjourdan@baylibre.com>
Message-ID: <5b2d9cf4-aaaf-706e-3a0a-96cd3c003e52@baylibre.com>
Date:   Tue, 21 May 2019 13:26:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190520194353.24445-2-martin.blumenstingl@googlemail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: tl
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 20/05/2019 21:43, Martin Blumenstingl wrote:
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Acked-by: Maxime Jourdan <mjourdan@baylibre.com>
