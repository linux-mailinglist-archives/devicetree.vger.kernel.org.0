Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5044353C0B8
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 00:19:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239580AbiFBWQ6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 18:16:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235072AbiFBWQy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 18:16:54 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FEF0DF4E
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 15:16:52 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id gd1so6066310pjb.2
        for <devicetree@vger.kernel.org>; Thu, 02 Jun 2022 15:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version;
        bh=KCDSDCa4mtxK2bDkxMNymFsPZCy42YBw44T/qgIT7Xo=;
        b=V+l1pOl4PvlIIm4jd+5Vy/AjMiBY6Ft21s6/rkrXOm1pow7Et1u9eTGtKlNWN6fZO/
         +6A0Chd/aJ0cp+aeuGqOE0oMgPULzKiO9WGecWqn4pNmz8tDY+fMvnetTyf5j6X3EQnl
         cF2Ld46fPAPznTt67b/cZdMsXao82UcoOWr/c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version;
        bh=KCDSDCa4mtxK2bDkxMNymFsPZCy42YBw44T/qgIT7Xo=;
        b=IGumAAZAS5NJk44LBl7BGha8w8RGpudu41++pVc8+o3MVbXSFx3coz1fL95V3YN1aB
         dfTv/30Q9GB7UvtUmKJutlLQ0POFdks7nqD/um+NH16ak1zcpRgaS29Utq5CskLKxX2I
         QSFe0FUH23N0Z1UN9Sb/Z5B4tizqTcK49k7m1S4k9rUSRS55+PeRKXTt7Hl/Do70rty+
         PDTwBH0+q5r0kK0ib7s67enyCLI6HF/0+7FT4G1VYBhqwd6aQyYn6svU6OYGrLg61gHo
         1KRSmyS+2v2PqFutOq/ANVDBR9NjPTQT4wtcv44QVaAb50N0zHeTUaJQ1RynON5TQ0ii
         qGIg==
X-Gm-Message-State: AOAM532x/3IdoulKTzJ9hp++6tyB29q5zWR6LEZNeSPtnAtOef8bTJBt
        lp+WWL9kRqPppF59ngu5HkGG8g==
X-Google-Smtp-Source: ABdhPJxNzSPV5AgI16h4jptg5dZ1YQXkPQm8Dx0ImGp/9UOFpFOPoES2DpYY9NsQfrm27DDfDBNaVA==
X-Received: by 2002:a17:903:249:b0:163:6dc0:b8b3 with SMTP id j9-20020a170903024900b001636dc0b8b3mr7003658plh.24.1654208211700;
        Thu, 02 Jun 2022 15:16:51 -0700 (PDT)
Received: from linuxpc-ThinkServer-TS140.dhcp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id z10-20020a056a001d8a00b00518d0707b52sm3903369pfw.208.2022.06.02.15.16.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 15:16:49 -0700 (PDT)
From:   Anand Gore <anand.gore@broadcom.com>
To:     Linux ARM List <linux-arm-kernel@lists.infradead.org>
Cc:     kursad.oney@broadcom.com, florian.fainelli@broadcom.com,
        tomer.yacoby@broadcom.com, samyon.furman@broadcom.com,
        dan.beygelman@broadcom.com,
        William Zhang <william.zhang@broadcom.com>,
        joel.peshkin@broadcom.com, Anand Gore <anand.gore@broadcom.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, soc@kernel.org
Subject: [PATCH v4 0/3] arm: bcmbca: add bcm6878 soc support
Date:   Thu,  2 Jun 2022 15:16:43 -0700
Message-Id: <20220602221646.3127512-1-anand.gore@broadcom.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
        boundary="000000000000ddb52105e07e5c4e"
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,MIME_NO_TEXT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--000000000000ddb52105e07e5c4e
Content-Transfer-Encoding: 8bit


The initial support includes a bare-bone dts
for dual core ARM v7  with a pl011 uart.

Changes in v4:
- Fixed subject line

Changes in v3:
- Simplify subject line

Changes in v2:
- Fix psci, GIC dts entries
- Remove extra empty lines

Anand Gore (3):
  ARM: dts: add dts files for bcmbca soc 6878
  dt-bindings: arm: add BCM6878 soc
  MAINTAINERS: add bcm6878 to bcmbca arch entry

 .../bindings/arm/bcm/brcm,bcmbca.yaml         |   7 ++
 MAINTAINERS                                   |   1 +
 arch/arm/boot/dts/Makefile                    |   3 +-
 arch/arm/boot/dts/bcm6878.dtsi                | 110 ++++++++++++++++++
 arch/arm/boot/dts/bcm96878.dts                |  30 +++++
 5 files changed, 150 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/bcm6878.dtsi
 create mode 100644 arch/arm/boot/dts/bcm96878.dts

-- 
2.25.1


--000000000000ddb52105e07e5c4e
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
dD3eNkKBkknQBWvFfBHcITIVdVccQg5YcIwowkVZhhA3NG0BXGI4l/3o+wjrl2BGO/t969dabQ5x
/SxGBTK8Vyn6NG7U0Lrjb0VtnrFXgEdxFvJuEQIDAQABo4IB2DCCAdQwDgYDVR0PAQH/BAQDAgWg
MIGjBggrBgEFBQcBAQSBljCBkzBOBggrBgEFBQcwAoZCaHR0cDovL3NlY3VyZS5nbG9iYWxzaWdu
LmNvbS9jYWNlcnQvZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3J0MEEGCCsGAQUFBzABhjVo
dHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMDBNBgNV
HSAERjBEMEIGCisGAQQBoDIBKAowNDAyBggrBgEFBQcCARYmaHR0cHM6Ly93d3cuZ2xvYmFsc2ln
bi5jb20vcmVwb3NpdG9yeS8wCQYDVR0TBAIwADBJBgNVHR8EQjBAMD6gPKA6hjhodHRwOi8vY3Js
Lmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwLmNybDAiBgNVHREEGzAZ
gRdhbmFuZC5nb3JlQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSMEGDAW
gBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUH4HXhI4xxNPqnv0yfNL6is0cLFYwDQYJ
KoZIhvcNAQELBQADggEBAAU15tMIqa2yrLdoPoNXMk6scL+6XJK/EVe0Lq0Uyq0SV8wpFV09ujno
nLmSFYTz1RjmiKr1eu/pwyTImqMUj1JAXZ2zgE0rFS5SvchJsSlB8Nv3WeTaf5Lha5ZmRTaB0U/E
eo7SFjA240UWLCGqXM69XCc5PHk6mWLNTsyDTgK2kLUKP1RVFswACNsI284fxiwA0qSCu2WnOEKE
LiytE/NBFgzVtBcryeBtcMnhZgMo0PQYRl4O+58O1O703CD1jiO4/ikP+hUTdxWQiiWAzpE89YCH
S0Pc2d2yC8RWARAiArr1jXHWA4+snG+TS3A1YVSPRZpboS5AXMutIIQ5YZQxggJtMIICaQIBATBr
MFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhHbG9i
YWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgxzcZR0ocq9f8sVOu8wDQYJYIZI
AWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIIZ0aEzdTiltX9LOCd5HUmoggO6G5MjLKfHXmEBA
DtnRMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIyMDYwMjIyMTY1
MlowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFlAwQB
AjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATANBgkq
hkiG9w0BAQEFAASCAQCVbCl42AeHgi3G6/JSCYh4xapIQkMCjSrB3E8jLwbTudbW+EohJ7PUYqTa
JHCdTN2jZWEZ/qYepLq4b97IJlQ+9mG1aSXXANP6ssgiurVg4TfLTucJeiDKXnXF6oSf3xpwcfSP
rt3OJ89fbbRjmlsyVgB8/MZOzH+Y5QTtrk+5KiZcNwqQSNftwyOP9nLmeBxPIfp6oY+wXFKJnImW
Fh92VIV+2ycA/za+1O1Jpdg5OTOY0uPSbROaXdOps1pv8hvsjnRejKAyovHxt9GHxgbD790vQCRF
gayvjQi1kJERWFRKA6o4vDpm0uU96EDkYcrOHfQjZol7QIZLjFCs9NRs
--000000000000ddb52105e07e5c4e--
