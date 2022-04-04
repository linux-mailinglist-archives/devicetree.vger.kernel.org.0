Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9B114F1B63
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 23:23:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232254AbiDDVUM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 17:20:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380003AbiDDShz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 14:37:55 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C32031376
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 11:35:59 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id m12-20020a17090b068c00b001cabe30a98dso114628pjz.4
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 11:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=O5NXzUKi7lG8omjehF6ll46xVRrxTpsNVjup9N0vjBM=;
        b=CAC/5Pvw6HToCTD8lI891l/GljiVlyrDdZLqhr5wWUnt4tiSGWHUDcTeDYfoxoPIQQ
         ys1v0mc27goZLiyvMztP2Hen/fPobbLp8kzBYrgXcFFmD5/59Qux89NMaIFunJG/hK8V
         aARHACXixcREsrN7UY7sufnRolcP2NI5Rut7Vpk85hNmlRDis5uo+IpQVl5cGHNSP0jm
         PpPc6SxHffN6KQscvlCirPC6t75sJZTmyM5gfJQEf9nSLnTUJ5bvnhEBy53jT8Uk+fqO
         F0ZN2a5i9SCc8a3y0b8eFqjk6Vi/pp8DxnPdsEQ9Tva5sr41mnf5AD5F5GW1grPbKN8Q
         OpCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=O5NXzUKi7lG8omjehF6ll46xVRrxTpsNVjup9N0vjBM=;
        b=nBv6ePAkg5TGmG3IiLKW/nbgdRUfVAs+gPgOPNjyppaO4bfFPSvWRSI+g7tbh5GPl9
         0C2alnQrmWlBY3WJ0Iq42RZqwwo743uABkHoYeBzyQctROW61YwH9RIUfW7OoLewWDsq
         slSqgtiEjDDB8+NC4ZYCwr/8O0kmELUAE6ps6pjQ3lsQGsN+ZGS67Anro5rvHmrlKmpB
         Xgt97HM6qQXu/gnBhiOBJUyv+PW/jMdyRCcA00ojLFlkm234KoybVf2L0R+Kd5U/9DUx
         vNg+X2ioeNruTUQ7TLJ/tLIRM/Q5VdTb9wvdZ4QOdGekoLY9cmTgZJahKoSO5rVpuW9s
         E18w==
X-Gm-Message-State: AOAM532/JSjPueGbbWqhnafbHfbVN9NMKbVKY80xyc6zWMfJsbnKvEPP
        FycmqAPdGrY+0LqcBGC16I4=
X-Google-Smtp-Source: ABdhPJxheQw5VcYhM3jgKB9d1fbPcl0XXEtvMq1vrTua6IWGdMbsIhtcbU0Sh5KHvIZB+Ocr7lDmvg==
X-Received: by 2002:a17:902:e94f:b0:14f:1636:c8a8 with SMTP id b15-20020a170902e94f00b0014f1636c8a8mr993878pll.130.1649097358859;
        Mon, 04 Apr 2022 11:35:58 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id g12-20020a056a001a0c00b004e1307b249csm13245796pfv.69.2022.04.04.11.35.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Apr 2022 11:35:58 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-9?b?QXL9bucg3E5BTA==?= <arinc.unal@arinc9.com>
Cc:     =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/5] ARM: dts: BCM5301X: Remove cell properties from srab ports on Asus RT-AC88U
Date:   Mon,  4 Apr 2022 11:35:56 -0700
Message-Id: <20220404183556.2316795-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401102002.15765-2-arinc.unal@arinc9.com>
References: <20220401102002.15765-1-arinc.unal@arinc9.com> <20220401102002.15765-2-arinc.unal@arinc9.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri,  1 Apr 2022 13:19:59 +0300, Arınç ÜNAL <arinc.unal@arinc9.com> wrote:
> Remove #address-cells and #size-cells properties from the ports node of
> &srab. They are already defined on bcm5301x.dtsi, there's no need to define
> them again.
> 
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
