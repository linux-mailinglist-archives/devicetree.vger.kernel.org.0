Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4163E6B68BB
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 18:21:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229796AbjCLRVb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 13:21:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229516AbjCLRVa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 13:21:30 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56A9634306
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 10:21:29 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id cn21so9668257edb.0
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 10:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678641688;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rBGzNUPx40eWlSyudiAgMdJKbCqGeD4gTi6lxixBKHk=;
        b=E1BKfgZTXss9x6mdMFRs39d3xDN+EgG772xt73ikoVPxKUGS1qcNxcf4XJEtBSZSaG
         rd5FFnvIzAibU5w939o+V088CKIYwoHngFUe6UzKIQXY97ICFdn7is2iXhRBWJ512Yy4
         rb0Il9ZAEjkNapTiO7qca4W9bDjmU/WUGfHzfvUSLbvBIeGzX3Mz6QucLla1GuAsGxT2
         vdBEEpJfv6RvCg9KdyRok1Tb77jh1f4MQNDkBi++NfkBhGv/+IfpoX1NwPSJkWRXBtmO
         aGcXJzdtvv2HWF/swaeqBbUqnDpoO7PAVu++y61N+5Eb+3Amfgk+Tjey9AxftYD9CZt4
         D5lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678641688;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rBGzNUPx40eWlSyudiAgMdJKbCqGeD4gTi6lxixBKHk=;
        b=246i2XGikff1uITZ4q2yIl6CkL9RnJe1EXXlEJCksb4rvnsHayKIvw8rLaQfwac4oO
         +98UbtHv5ixuktm25eVL/k6P04Pn9xSVbE+io7Sl86Rx6M6/u9jvhyPxJ1jg35LfngKJ
         s2MXq4fFD2pAr9R/t7+49BPT4pQUm4pT8s15+PDEXd+Kg3FDo9Vdx8QJ40f39NJPBdjx
         TSIj5B70rOD94tZB8yUCXlMCbbn5XmYwsLWpemlMdJ+aVm1o3i4CISp1ZQez2cTqm8w1
         CW7oN0gHIsIgI/j7b7Yo83TBnZ13EEmAz4r+h9Y4Ca4WTrjtNhdocQg4coheicvdS8GZ
         1NoA==
X-Gm-Message-State: AO0yUKUrOeSLIsefGTN1yCIpx1eaZbPfUomBis6sz4/Z3hF0C9WyMifE
        UVlKTTd4KTG67RP7TOr0gCxY7Su2SAQRZSIWAo8=
X-Google-Smtp-Source: AK7set/kVs+9u6kikzXCPsUVOIF7XG29GqtUg2Wlxck4Lz67PS0ioKLNX47DXpFz/87w5rqyeEhwZw==
X-Received: by 2002:a05:6402:181a:b0:4af:51b6:fe49 with SMTP id g26-20020a056402181a00b004af51b6fe49mr9563004edy.13.1678641687814;
        Sun, 12 Mar 2023 10:21:27 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id y13-20020a50ce0d000000b004fa380a14e7sm2055395edi.77.2023.03.12.10.21.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 10:21:27 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andrew Lunn <andrew@lunn.ch>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: marvell: use "okay" for status
Date:   Sun, 12 Mar 2023 18:21:21 +0100
Message-Id: <167864162127.395859.11689617186771884910.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127101839.93873-1-krzysztof.kozlowski@linaro.org>
References: <20230127101839.93873-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 27 Jan 2023 11:18:38 +0100, Krzysztof Kozlowski wrote:
> "okay" over "ok" is preferred for status property.
> 
> 

Applied, thanks!
(Patch was waiting for quite a long on the lists, let me know if anyone wants
to pick it up instead)

[1/1] ARM: dts: marvell: use "okay" for status
      https://git.kernel.org/krzk/linux-dt/c/90bf48c6ddd3afc406e41a1a193d412f61d2a976

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
