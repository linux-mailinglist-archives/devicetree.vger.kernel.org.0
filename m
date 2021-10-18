Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF8E5431EE9
	for <lists+devicetree@lfdr.de>; Mon, 18 Oct 2021 16:06:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234998AbhJROHB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Oct 2021 10:07:01 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:49208
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235584AbhJROE6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 18 Oct 2021 10:04:58 -0400
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 299F140064
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 14:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1634565766;
        bh=n+gqCEKRjnF32ZwCp1GL3/Z2MQYyrJF+G4qgFNA43e0=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=szPiXCSsJg6keQjvjVuOXlM6gmrxHyLLldtuZQ4WcPcnQxgtoV8tedZKeEL91MRnm
         xcFTAw0rB8BStMpdb0FdYF41z0kzroZE8MRNd/OqF8Y4O14WN85nzZK61qlU+mQsTa
         7YHF5AHHEzHcX5h57RBANr9hT9/r8hqy8Vo4alJyWShVjbKTuj8o/jhtFg1tIVxbhy
         PC0GoSFsA2oVdxHQKkJoMMwDi4GD5X92tE2TQN2k8t4fptJXlQQz7Re4hTLzLfqQVT
         k39/5PGAMcOLl9wS4vRj/RaKYD3oPAOpzPmdsfnmrt6mVoGtST0PMA8yBhlHzBCr/d
         qpDjvd9akCHBA==
Received: by mail-lf1-f72.google.com with SMTP id m16-20020a056512115000b003fdb79f743fso7649481lfg.16
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 07:02:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=n+gqCEKRjnF32ZwCp1GL3/Z2MQYyrJF+G4qgFNA43e0=;
        b=bw6vGEbpdW6+8VaPEd8ZJUCttsaYOxdfxfDIj9Uy1zXT1dlCu6EZowPI43YN1wRcum
         D5VVa7cDD7jhNL408uM6FdBZs34TXPqA4wcZwgAKlLAC7MIRpy6LVkuscVsPTYAoHIf1
         TRGmfxHce+dr/K9LkgsTbmpxw3eYVYBtVDJJDHiZpKVDDWWf/g2kE0Vfpw63K+qlPcEl
         mkx0TnYSEjJhfnXl0mvrk30EXBNOH8CMGkqQT/NQjn4hKkDzLU5iPeU1ZxF15JAXfu67
         WfkeIKcV6Kw3IdMeabU/Gngp9JDeIePwDO6pBtkaD8Q+664Fx84Z+r665jUzb5XPhb5G
         kdmA==
X-Gm-Message-State: AOAM533+6TdN2SLoqZ9YJRwvUXiiraCfbciAHZapxVPa8f7t8afMpC/E
        H4lTRliw9Yi8Hs4ZMn/KhIP07UHYznHxbpBkgEmyrqZg8s9UAuK2aHmCD8x2um4/ewrdSG2kb6j
        wb8CbaR6AP9m53t+he2suWhtSn4IA72wEp4oMoEs=
X-Received: by 2002:a2e:b4b3:: with SMTP id q19mr31771864ljm.508.1634565765285;
        Mon, 18 Oct 2021 07:02:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwvK1fNjhyEFS2oGW6l1ztV/o6AF6Lw+s7c27H0NgbVIkuDuZ7oTlW87vyRha/egtx0W7mJFA==
X-Received: by 2002:a2e:b4b3:: with SMTP id q19mr31771832ljm.508.1634565765137;
        Mon, 18 Oct 2021 07:02:45 -0700 (PDT)
Received: from [192.168.3.161] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id d20sm1411576lfv.117.2021.10.18.07.02.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 07:02:44 -0700 (PDT)
Subject: Re: [PATCH v4 00/10] regulator/mfd/clock: dt-bindings: Samsung S2M
 and S5M to dtschema
To:     Mark Brown <broonie@kernel.org>, Lee Jones <lee.jones@linaro.org>
Cc:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Liam Girdwood <lgirdwood@gmail.com>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org,
        Sam Protsenko <semen.protsenko@linaro.org>
References: <20211008113723.134648-1-krzysztof.kozlowski@canonical.com>
 <YWCT+YL/9qHbF9f0@sirena.org.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <bb1f4be0-ca2a-e327-0831-f648a2ca3ab3@canonical.com>
Date:   Mon, 18 Oct 2021 16:02:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YWCT+YL/9qHbF9f0@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/10/2021 20:54, Mark Brown wrote:
> On Fri, Oct 08, 2021 at 01:37:12PM +0200, Krzysztof Kozlowski wrote:
> 
>> This patchset converts all devicetree bindings of Samsung S2M and S5M
>> PMIC devices from txt to dtschema.
> 
> The following changes since commit e73f0f0ee7541171d89f2e2491130c7771ba58d3:
> 
>   Linux 5.14-rc1 (2021-07-11 15:07:40 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git tags/s2m_s5m_dtschema
> 
> for you to fetch changes up to fab58debc137f66cf97f60c8471ff2f1e3e1b44b:
> 
>   regulator: dt-bindings: samsung,s5m8767: convert to dtschema (2021-10-08 17:24:37 +0100)
> 

Thanks Mark for the branch.

Lee, can you merge it and apply the rest (MFD)?


Best regards,
Krzysztof
