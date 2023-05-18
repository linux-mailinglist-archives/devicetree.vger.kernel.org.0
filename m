Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A00CF70837C
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 16:04:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231500AbjEROEz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 10:04:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231649AbjEROEy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 10:04:54 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 185D910E5
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 07:04:53 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-645cfeead3cso362939b3a.1
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 07:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684418692; x=1687010692;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bUUumQawtkUFqcWTcbwIurDkmC+nTk6fi3MmnvzL7ig=;
        b=lly/AFBayyLr1LH3KDVEKp0bpSPDxl53GslcKmV6mwQe+QX8LKpbLMovrXkt06MAFD
         QmZny7bzi8SNSTLCsrc1qhUyxF5uDltVhtIuXou76Csf8Sp5iOe1qRlZR4QT4UYv6XnN
         +td+r79W4wS0wblH2CfaJC/CH2oCQSh+rEMJbPOQKLwGFErDnLQB/kP/2wxIIVxMweRf
         taj3aSJIexJ8MtJqnP4TswnHX/VpMfLU8nMuZxKAdzoV34v2n91mw6y6z9H08U/1zZEW
         VNmnvQI6b/FbZWycTB8S+gMLgva8OQELynUYpdg55PKQSmYuAlZTunU7mup1fHYJ5VLE
         fViA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684418692; x=1687010692;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bUUumQawtkUFqcWTcbwIurDkmC+nTk6fi3MmnvzL7ig=;
        b=Ot7HqHwY4olKWZF9yKy6Oi9W8NsAxvmsm2Gr0aC5V37DHdeqSEUwqRRMgxxZuE+cE3
         +ne+mDr4AyysIM9mFnmoC9+QMYbQ6QeixfcMRoZbQDvlx6l1Ruq3CzwIeD9Wia69or8A
         IUnuM+hKF9nuWuDx+xkS3vNj+eL2NV4Eyv5U5dw27mZo0Ga/tRy9QLHcsuToTutEY0jz
         CZC6rvQpWVr0vmtGg83U7CmmoIxzQ9zSD2BT6f76Mg5rBt/TKFDExOz/nLyUMRsVjpgV
         cIs4GgmqBq0iO2LcwBEy3oxnDQaBA9KRGt/O9LT37Wd+CdQ2XUIvTGewrjR0OBivTL+Q
         UrwA==
X-Gm-Message-State: AC+VfDwoWbEMcL1WVyJJjr7G0Ai4POLBTzU5P8Q0xGUTMPUIKzrhX27w
        bywfaCVxf3uoCik55m3QwUyYMGklkxeUX+K2fyw=
X-Google-Smtp-Source: ACHHUZ4Qk7E4HCnIbMYWhcYXpx3iMrPUhef6l1S3CsWdmOOyMSUMMZGrxJR55xkwxiST1QuY34wHCG/oFP57giNIV4c=
X-Received: by 2002:a05:6a20:6a26:b0:101:37b2:62eb with SMTP id
 p38-20020a056a206a2600b0010137b262ebmr8075272pzk.5.1684418692399; Thu, 18 May
 2023 07:04:52 -0700 (PDT)
MIME-Version: 1.0
References: <20230518135421.1905616-1-shenwei.wang@nxp.com>
In-Reply-To: <20230518135421.1905616-1-shenwei.wang@nxp.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Thu, 18 May 2023 11:04:41 -0300
Message-ID: <CAOMZO5B9=kvFnuW7aMFSCMgF-xmuf0i3Rbzo56SJWpvJuri13Q@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: imx8qm-mek: correct GPIOs for USDHC2 CD
 and WP signals
To:     Shenwei Wang <shenwei.wang@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 18, 2023 at 10:54=E2=80=AFAM Shenwei Wang <shenwei.wang@nxp.com=
> wrote:
>
> The USDHC2 CD and WP sginal should be on LSIO_GPIO5.
>
> Fixes: 307fd14d4b14 ("arm64: dts: imx: add imx8qm mek support")
> Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>
