Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4DC5632BFB
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 19:21:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229490AbiKUSVf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 13:21:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229489AbiKUSVc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 13:21:32 -0500
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC30DC67EF
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 10:21:31 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id w4so2548417plp.1
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 10:21:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8w9f4y377QtdcrkQmSKVz9YndndMyGver3VZ27R7CKA=;
        b=3omtfVMBlHwiBWSEOLuxgQqnH3bzQTxnJNc1CqHj7505Mu9sQWMu+R+dNeviBUmYON
         Nrf8mMt8T1phKqn9bnrQ8wX/SZjaMtN9aW+sqrjVXk89gHEZaLF65G5zzK2Sv1FMckQH
         bS5TNztm10AdS2d2Nz90rX0XPsE5YItnVVEOOdwnVoDy4Jm+JQDKmrIkt6A/5v14qzvM
         yyIy4/6Bs5e3cdN4m/UmybN1YXi/kUBQ7Nwl/FYRdfIjb+/1Iz3iHv0HiApd3FBpx6QI
         5ZRSNdtulQGLkZdjFQx+gvExfnafWI7bJ4nco2qjdNPx7ThYKfeph9DpZbWv6h1AjhF0
         qpNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8w9f4y377QtdcrkQmSKVz9YndndMyGver3VZ27R7CKA=;
        b=OoH+hS3QYGZs5M5WU2frtfYf5x4E6qr5pSySCfKRnHZuZsXIS0SUM3hiHwJKRiaNeB
         MN9QsVEDq9tdAfRcc8KGd9aRXPvaP8Dps+oedavg3ENLEcIciJwkEQHQ6zs0itwkT23o
         CJbFups2EI+/vX1seeqaM6HC7V6AtFzFOXXaqbd2/GtkyfR66f+xRs9gRX53D6J8Mp0d
         vsFPupOGYFDkdg2oRwCmL3q5KTCncCbImy05FkqqEblEFVQC1iOCU+NuHWYDRJhj1C6g
         tG542UibnP95uHClRxchT97NdtkJXMG19qa9oH68pFnVVIdyBwWIwwOxzWM/+iLOEtfe
         /3fQ==
X-Gm-Message-State: ANoB5pncUlt4iHBwRYR5zhRYbVAm6p2blUP1vfjqS1OWbVDxwQjgLUl6
        xQQZ3V1gox9H5qVqQ0BfpoAO7A==
X-Google-Smtp-Source: AA0mqf6lZH/t4A6UhS6locXOZ/QDeHJNF0k/f2M6v6NCSZSVyFx7Q5/JiZKp4LAXjmm2O30PPiKTmw==
X-Received: by 2002:a17:902:7d94:b0:188:f0e1:ef42 with SMTP id a20-20020a1709027d9400b00188f0e1ef42mr2923518plm.166.1669054891238;
        Mon, 21 Nov 2022 10:21:31 -0800 (PST)
Received: from localhost ([75.172.139.56])
        by smtp.gmail.com with ESMTPSA id e1-20020aa79801000000b0056bb4bbfb9bsm5335744pfl.95.2022.11.21.10.21.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 10:21:30 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Bernhard =?utf-8?Q?Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
        devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski@linaro.org, mcoquelin.stm32@gmail.com,
        alexandre.torgue@foss.st.com, matthias.bgg@gmail.com
Subject: Re: [PATCH 6/9] ARM: dts: mediatek: Remove pins-are-numbered property
In-Reply-To: <20221121015451.2471196-7-bero@baylibre.com>
References: <20221121015451.2471196-1-bero@baylibre.com>
 <20221121015451.2471196-7-bero@baylibre.com>
Date:   Mon, 21 Nov 2022 10:21:30 -0800
Message-ID: <7hpmdg88yd.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bernhard Rosenkr=C3=A4nzer <bero@baylibre.com> writes:

> Remove the unnecessary pins-are-numbered property from
> Mediatek ARM DeviceTrees
>
> Signed-off-by: Bernhard Rosenkr=C3=A4nzer <bero@baylibre.com>

Acked-by: Kevin Hilman <khilman@baylibre.com>
