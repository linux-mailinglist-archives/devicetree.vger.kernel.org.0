Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E93F56AA3ED
	for <lists+devicetree@lfdr.de>; Fri,  3 Mar 2023 23:10:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231377AbjCCWK2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Mar 2023 17:10:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233588AbjCCWJX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Mar 2023 17:09:23 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A903866D07
        for <devicetree@vger.kernel.org>; Fri,  3 Mar 2023 13:59:53 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id d36so2238101lfv.8
        for <devicetree@vger.kernel.org>; Fri, 03 Mar 2023 13:59:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677880708;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8JCGCfWsEtMZLcVHHCa74pefi7B3KQrby6URhzr4GI0=;
        b=v6J9rKoMHQQWtRM2WAPTknSppiWfqTYA98OJ3v1acJGLQb2FIQl/fuMS+2VuJMyv2t
         FCUxJM87YFBvg1cioqpEOshweJkP98WJAZdYN1b53W/88svOUc2aR0RroaUvbEqHrbCm
         hpuCQsq5Ah2b5Eb5sg4fHQcNBfk3iGQOQOxQTJmsjtzDXX9xJX5MQe1RZjTu4PZtINqJ
         WU14LGCLaUF2Ao6hPDiqI64uQt/INA3/MbYzW4Oc3eO5ZkmHUu7s2ZScYarD7qh5CRQq
         g0YuVPvRy0UZRruBTGQXFoREyFnP13u82D5OIfq3sXVX8rn13yG28vwI+tVRvCc3WV0g
         S+kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677880708;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8JCGCfWsEtMZLcVHHCa74pefi7B3KQrby6URhzr4GI0=;
        b=IylQs1VA2n0HXPCv9EVAEN2Nuv5py4xSNR4SnwKLgdelZjCHZ4BD3tg6KHQr6MLWpM
         08bV9+LoQmZqOrNnPMKcNMCoOUlhjQwty0l64ee2XnMgIABJcTHP0sBVA7lFaTVyMbzt
         H0G3LFpkMVb8yzjhbRBjpWlai6wP937rLnUCRPLB6dD3LQSElp6NSSSOfQ4jHopAnb/N
         XQhpEnWeCPyAwewRYwznIuvN4wtdobd4Au3RcH4wIei5mujJDrYWtXIFvC7o+c3eqO2E
         jlWUKQc1x2v+nXVIJmZ3MAueC/O/aGRg18ZfSTMeHsacWfFrpqtaxT2s0hRF8kuBFbMq
         YS4w==
X-Gm-Message-State: AO0yUKVNFVN8bf/0RCBiJ5ZP59g+A6G9K9Cpesjny4GX7ZSQOwCQbKku
        3t54BD/rZWhxiN/MuSAEQJxXeQ==
X-Google-Smtp-Source: AK7set9ubCGWnXQ3FbQbAsRiDTrdKcsPpOeIF4ovsQlue08df1ClqYLDROmaw6e8yLWA2e2FLjq9YQ==
X-Received: by 2002:ac2:4c94:0:b0:4b5:649a:9105 with SMTP id d20-20020ac24c94000000b004b5649a9105mr1040611lfl.65.1677880707826;
        Fri, 03 Mar 2023 13:58:27 -0800 (PST)
Received: from [192.168.1.101] (abym99.neoplus.adsl.tpnet.pl. [83.9.32.99])
        by smtp.gmail.com with ESMTPSA id e27-20020ac2547b000000b004cafa01ebbfsm552670lfn.101.2023.03.03.13.58.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Mar 2023 13:58:27 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 03 Mar 2023 22:58:11 +0100
Subject: [PATCH 11/15] arm64: dts: qcom: sm6375: Configure TSENS thermal
 zones
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230303-topic-sm6375_features0_dts-v1-11-8c8d94fba6f0@linaro.org>
References: <20230303-topic-sm6375_features0_dts-v1-0-8c8d94fba6f0@linaro.org>
In-Reply-To: <20230303-topic-sm6375_features0_dts-v1-0-8c8d94fba6f0@linaro.org>
To:     Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1677880689; l=14701;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=/lr+1yNk3Q9+rICl1jdL9WbimfeX4M1X6sYuxc9vpL8=;
 b=bL+PGVBy+cmXKc5NishMi5TC7c9Z8wYgQoNFGPT4KKQ4vxPTrNDVepAuxXicieiwAJV/rddwIhi9
 3B6RFFGKBfAdBTfzWhrVe4XCcYXshqJndjz/IedeOV1O1j/zkxD6
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a thermal zones configuration for all 15+11 TSENS sensors.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6375.dtsi | 704 +++++++++++++++++++++++++++++++++++
 1 file changed, 704 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6375.dtsi b/arch/arm64/boot/dts/qcom/sm6375.dtsi
index a88ed6467e68..94bb373f8d97 100644
--- a/arch/arm64/boot/dts/qcom/sm6375.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6375.dtsi
@@ -1550,6 +1550,710 @@ cpufreq_hw: cpufreq@fd91000 {
 		};
 	};
 
+	thermal-zones {
+		mapss0-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens0 0>;
+
+			trips {
+				mapss0_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				mapss0_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				mapss0_crit: mapss-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu0-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens0 1>;
+
+			trips {
+				cpu0_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu0_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu0_crit: cpu-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu1-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens0 2>;
+
+			trips {
+				cpu1_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu1_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu1_crit: cpu-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu2-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens0 3>;
+
+			trips {
+				cpu2_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu2_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu2_crit: cpu-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu3-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens0 4>;
+
+			trips {
+				cpu3_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu3_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu3_crit: cpu-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu4-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens0 5>;
+
+			trips {
+				cpu4_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu4_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu4_crit: cpu-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu5-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens0 6>;
+
+			trips {
+				cpu5_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu5_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu5_crit: cpu-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cluster0-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens0 7>;
+
+			trips {
+				cluster0_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cluster0_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cluster0_crit: cpu-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cluster1-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens0 8>;
+
+			trips {
+				cluster1_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cluster1_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cluster1_crit: cpu-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu6-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens0 9>;
+
+			trips {
+				cpu6_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu6_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu6_crit: cpu-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu7-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens0 10>;
+
+			trips {
+				cpu7_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu7_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu7_crit: cpu-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-unk0-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens0 11>;
+
+			trips {
+				cpu_unk0_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu_unk0_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu_unk0_crit: cpu-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-unk1-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens0 12>;
+
+			trips {
+				cpu_unk1_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu_unk1_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu_unk1_crit: cpu-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss0-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens0 13>;
+
+			trips {
+				gpuss0_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				gpuss0_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				gpuss0_crit: gpu-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss1-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens0 14>;
+
+			trips {
+				gpuss1_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				gpuss1_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				gpuss1_crit: gpu-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		mapss1-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens1 0>;
+
+			trips {
+				mapss1_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				mapss1_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				mapss1_crit: mapss-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cwlan-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens1 1>;
+
+			trips {
+				cwlan_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cwlan_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cwlan_crit: cwlan-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		audio-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens1 2>;
+
+			trips {
+				audio_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				audio_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				audio_crit: audio-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		ddr-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens1 3>;
+
+			trips {
+				ddr_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				ddr_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				ddr_crit: ddr-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		q6hvx-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens1 4>;
+
+			trips {
+				q6hvx_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				q6hvx_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				q6hvx_crit: q6hvx-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		camera-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens1 5>;
+
+			trips {
+				camera_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				camera_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				camera_crit: camera-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		mdm-core0-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens1 6>;
+
+			trips {
+				mdm_core0_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				mdm_core0_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				mdm_core0_crit: mdm-core0-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		mdm-core1-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens1 7>;
+
+			trips {
+				mdm_core1_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				mdm_core1_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				mdm_core1_crit: mdm-core1-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		mdm-vec-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens1 8>;
+
+			trips {
+				mdm_vec_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				mdm_vec_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				mdm_vec_crit: mdm-vec-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		msm-scl-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens1 9>;
+
+			trips {
+				msm_scl_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				msm_scl_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				msm_scl_crit: msm-scl-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		video-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens1 10>;
+
+			trips {
+				video_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				video_alert1: trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				video_crit: video-crit {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+	};
+
 	timer {
 		compatible = "arm,armv8-timer";
 		interrupts = <GIC_PPI 1 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,

-- 
2.39.2

